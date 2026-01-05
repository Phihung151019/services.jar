.class public final Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;->this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;->this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->releaseWakelock()V

    return-void
.end method
