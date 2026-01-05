.class public final Lcom/android/server/DeviceIdleController$6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final onProviderDisabled$com$android$server$DeviceIdleController$6(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final onProviderDisabled$com$android$server$DeviceIdleController$7(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final onProviderEnabled$com$android$server$DeviceIdleController$6(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final onProviderEnabled$com$android$server$DeviceIdleController$7(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private final onStatusChanged$com$android$server$DeviceIdleController$6(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method private final onStatusChanged$com$android$server$DeviceIdleController$7(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget v0, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->receivedGpsLocationLocked(Landroid/location/Location;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$6;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->receivedGenericLocationLocked(Landroid/location/Location;)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    iget p0, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    iget p0, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    iget p0, p0, Lcom/android/server/DeviceIdleController$6;->$r8$classId:I

    return-void
.end method
