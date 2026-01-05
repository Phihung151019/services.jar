.class public final synthetic Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget p0, p0, Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "AnrMainProcessDumpThread"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/server/am/AnrHelper;->sDefaultThreadFactory:Lcom/android/server/am/AnrHelper$$ExternalSyntheticLambda0;

    new-instance p0, Ljava/lang/Thread;

    const-string v0, "AnrAuxiliaryTaskExecutor"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
