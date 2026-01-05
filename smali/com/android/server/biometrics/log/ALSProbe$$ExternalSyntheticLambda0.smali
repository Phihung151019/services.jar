.class public final synthetic Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/ALSProbe;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/ALSProbe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/ALSProbe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/ALSProbe;

    const-string/jumbo v0, "Max time exceeded for ALS logger - disabling: "

    monitor-enter p0

    :try_start_0
    const-string v1, "ALSProbe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLightSensorListener:Lcom/android/server/biometrics/log/ALSProbe$1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/biometrics/log/ALSProbe;->mLastAmbientLux:F

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/log/ALSProbe;->onNext(F)V

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->disable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
