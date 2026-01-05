.class public final Lcom/android/server/biometrics/log/CallbackWithProbe;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mProbe:Lcom/android/server/biometrics/log/ALSProbe;

.field public final mStartWithClient:Z


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/ALSProbe;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    iput-boolean p2, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mStartWithClient:Z

    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->destroy()V

    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mStartWithClient:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/ALSProbe;

    invoke-virtual {p0}, Lcom/android/server/biometrics/log/ALSProbe;->enable()V

    :cond_0
    return-void
.end method
