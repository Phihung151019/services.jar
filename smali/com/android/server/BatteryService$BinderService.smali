.class public final Lcom/android/server/BatteryService$BinderService;
.super Landroid/os/Binder;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    iget-object v0, v0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/BatteryService;->TAG_SS:Ljava/lang/String;

    const-string v1, "BatteryService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p3

    if-lez v0, :cond_5

    const-string v0, "--proto"

    const/4 v1, 0x0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    new-instance p2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    const-wide v2, 0x10800000001L

    invoke-virtual {p2, v2, v3, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p3, p1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p3, p1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    if-eqz p3, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-boolean p3, p1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    if-eqz p3, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    iget-boolean p1, p1, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    if-eqz p1, :cond_4

    const/16 v1, 0x8

    :cond_4
    :goto_0
    const-wide v2, 0x10e00000002L

    invoke-virtual {p2, v2, v3, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    const-wide v1, 0x10500000003L

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    const-wide v1, 0x10500000004L

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    const-wide v1, 0x10500000005L

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    const-wide v1, 0x10e00000006L

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    const-wide v1, 0x10e00000007L

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-boolean p1, p1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    const-wide v1, 0x10800000008L

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    const-wide v1, 0x10500000009L

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000aL

    const/16 p1, 0x64

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    const-wide v1, 0x1050000000bL

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    const-wide v1, 0x1050000000cL

    invoke-virtual {p2, v1, v2, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p0, p0, Lcom/android/server/BatteryService;->mHealthInfo:Landroid/hardware/health/HealthInfo;

    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    const-wide v1, 0x1090000000dL

    invoke-virtual {p2, v1, v2, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    iget-object p0, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->-$$Nest$mdumpInternal(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/android/server/BatteryService$Shell;

    iget-object v1, p0, Lcom/android/server/BatteryService$BinderService;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {v0, v1}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
