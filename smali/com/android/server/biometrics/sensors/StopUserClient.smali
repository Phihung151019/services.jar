.class public abstract Lcom/android/server/biometrics/sensors/StopUserClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private final mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;)V
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    move-object/from16 p1, p8

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/StopUserClient;->mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;

    return-void
.end method


# virtual methods
.method public final getProtoEnum()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public final onUserStopped()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/StopUserClient;->mUserStoppedCallback:Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;

    invoke-interface {v0}, Lcom/android/server/biometrics/sensors/StopUserClient$UserStoppedCallback;->onUserStopped()V

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getCallback()Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
