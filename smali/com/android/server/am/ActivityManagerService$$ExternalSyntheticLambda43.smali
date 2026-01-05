.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJI)V
    .locals 0

    iput p7, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$2:I

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$3:F

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$4:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$2:I

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$3:F

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$4:J

    sget p0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->handleBinderHeavyHitters(Ljava/util/List;IFJ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$2:I

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$3:F

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$4:J

    sget p0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->handleBinderHeavyHitters(Ljava/util/List;IFJ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$2:I

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$3:F

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda43;->f$4:J

    sget p0, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->handleBinderHeavyHitters(Ljava/util/List;IFJ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
