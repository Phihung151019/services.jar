.class public final Lcom/android/server/biometrics/sensors/SensorList;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mSensors:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/app/IActivityManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/SensorList;->mActivityManager:Landroid/app/IActivityManager;

    return-void
.end method


# virtual methods
.method public final addSensor(ILjava/lang/Object;ILandroid/app/SynchronousUserSwitchObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mSensors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo p1, "SensorList"

    :try_start_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/SensorList;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p0, p4, p1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    const/16 p0, -0x2710

    if-ne p3, p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p4, p0}, Landroid/app/SynchronousUserSwitchObserver;->onUserSwitching(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "Unable to register user switch observer"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
