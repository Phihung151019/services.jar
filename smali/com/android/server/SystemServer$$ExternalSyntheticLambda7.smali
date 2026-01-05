.class public final synthetic Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$10:Lcom/android/server/VpnManagerService;

.field public final synthetic f$11:Lcom/android/server/net/UrspService;

.field public final synthetic f$12:Lcom/android/server/HsumBootUserInitializer;

.field public final synthetic f$13:Landroid/os/IBinder;

.field public final synthetic f$14:Lcom/samsung/accessory/manager/SAccessoryManager;

.field public final synthetic f$15:Landroid/os/IBinder;

.field public final synthetic f$16:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$17:Lcom/android/server/timedetector/NetworkTimeUpdateService;

.field public final synthetic f$18:Lcom/android/server/input/InputManagerService;

.field public final synthetic f$19:Lcom/android/server/TelephonyRegistry;

.field public final synthetic f$2:Z

.field public final synthetic f$20:Lcom/android/server/SemTelephonyRegistry;

.field public final synthetic f$21:Lcom/android/server/media/MediaRouterService;

.field public final synthetic f$22:Lcom/android/server/MmsServiceBroker;

.field public final synthetic f$23:Z

.field public final synthetic f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:Z

.field public final synthetic f$7:Landroid/net/ConnectivityManager;

.field public final synthetic f$8:Lcom/android/server/net/NetworkManagementService;

.field public final synthetic f$9:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/SemTelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iput-boolean p3, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$2:Z

    iput-object p4, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    iput-boolean p5, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$4:Z

    iput-object p6, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$5:Landroid/content/Context;

    iput-boolean p7, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$6:Z

    iput-object p8, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$7:Landroid/net/ConnectivityManager;

    iput-object p9, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$8:Lcom/android/server/net/NetworkManagementService;

    iput-object p10, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$9:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p11, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$10:Lcom/android/server/VpnManagerService;

    iput-object p12, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$11:Lcom/android/server/net/UrspService;

    iput-object p13, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$12:Lcom/android/server/HsumBootUserInitializer;

    iput-object p14, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$13:Landroid/os/IBinder;

    iput-object p15, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$14:Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$15:Landroid/os/IBinder;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$16:Lcom/android/server/CountryDetectorService;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$17:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$18:Lcom/android/server/input/InputManagerService;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$19:Lcom/android/server/TelephonyRegistry;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$20:Lcom/android/server/SemTelephonyRegistry;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$21:Lcom/android/server/media/MediaRouterService;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$22:Lcom/android/server/MmsServiceBroker;

    move/from16 p1, p24

    iput-boolean p1, p0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$23:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/SystemServer;

    move-object v2, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    move-object v3, v2

    iget-boolean v2, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$2:Z

    move-object v4, v3

    iget-object v3, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$3:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    move-object v5, v4

    iget-boolean v4, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$4:Z

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$5:Landroid/content/Context;

    move-object v7, v6

    iget-boolean v6, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$6:Z

    move-object v8, v7

    iget-object v7, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$7:Landroid/net/ConnectivityManager;

    move-object v9, v8

    iget-object v8, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$8:Lcom/android/server/net/NetworkManagementService;

    move-object v10, v9

    iget-object v9, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$9:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object v11, v10

    iget-object v10, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$10:Lcom/android/server/VpnManagerService;

    move-object v12, v11

    iget-object v11, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$11:Lcom/android/server/net/UrspService;

    move-object v13, v12

    iget-object v12, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$12:Lcom/android/server/HsumBootUserInitializer;

    move-object v14, v13

    iget-object v13, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$13:Landroid/os/IBinder;

    move-object v15, v14

    iget-object v14, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$14:Lcom/samsung/accessory/manager/SAccessoryManager;

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$15:Landroid/os/IBinder;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$16:Lcom/android/server/CountryDetectorService;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$17:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$19:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$20:Lcom/android/server/SemTelephonyRegistry;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$21:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$22:Lcom/android/server/MmsServiceBroker;

    iget-boolean v0, v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;->f$23:Z

    move-object/from16 v23, v22

    move/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v16, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v23

    move-object/from16 v23, v21

    move-object/from16 v21, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v23

    invoke-static/range {v0 .. v22}, Lcom/android/server/SystemServer;->$r8$lambda$gEmTR7CVQ-l_CmmRBoxkZ9OyUbo(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/net/UrspService;Lcom/android/server/HsumBootUserInitializer;Landroid/os/IBinder;Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/SemTelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Z)V

    return-void
.end method
