.class public final Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

.field public final callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

.field public final code:I

.field public delay:J

.field public final value:I

.field public final vendorCode:I


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;-><init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V

    iput p3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iput p3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    iput p4, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Run: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->delay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SemTestHalHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callbackType:Lcom/android/server/biometrics/sensors/SemTestHalHelper$CallbackType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverTspEvent(I)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverAuthenticationResult(I)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->value:I

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverEnrollResult(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverErrorEvent(II)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->callback:Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;

    iget v1, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->code:I

    iget p0, p0, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Action;->vendorCode:I

    invoke-interface {v0, v1, p0}, Lcom/android/server/biometrics/sensors/SemTestHalHelper$Callback;->deliverAcquiredEvent(II)V

    return-void
.end method
