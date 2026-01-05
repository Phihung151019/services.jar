.class public final Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mConstants:Lcom/android/server/appbinding/AppBindingConstants;

.field public final mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;Landroid/content/ComponentName;)V
    .locals 15

    move-object/from16 v0, p3

    iget-wide v7, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    const-string v2, "AppBindingService"

    iget-wide v9, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    iget-wide v11, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    iget-wide v13, v0, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    move-object v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v14}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V

    move-object/from16 v2, p5

    iput-object v2, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    iput-object v0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    return-void
.end method


# virtual methods
.method public final asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/service/carrier/ICarrierMessagingClientService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingClientService;

    move-result-object p0

    return-object p0
.end method

.method public final getBindFlags()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/CarrierMessagingClientServiceFinder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    iget p0, p0, Lcom/android/server/appbinding/AppBindingConstants;->SMS_APP_BIND_FLAGS:I

    return p0
.end method
