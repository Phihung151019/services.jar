.class public final synthetic Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/BatteryService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/BatteryService;ZLjava/io/PrintWriter;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/BatteryService;

    iput-boolean p2, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$1:Z

    iput-object p3, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$2:Ljava/io/PrintWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$1:Z

    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$2:Ljava/io/PrintWriter;

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$0:Lcom/android/server/BatteryService;

    iget-boolean v1, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$1:Z

    iget-object p0, p0, Lcom/android/server/BatteryService$$ExternalSyntheticLambda12;->f$2:Ljava/io/PrintWriter;

    sget-object v2, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/android/server/BatteryService;->mSequence:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
