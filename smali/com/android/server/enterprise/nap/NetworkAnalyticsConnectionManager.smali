.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;


# instance fields
.field public activatedProfileCounter:I

.field public binderMap:Ljava/util/concurrent/ConcurrentHashMap;

.field public profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    return-void
.end method


# virtual methods
.method public final addProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    return-void
.end method

.method public final removeProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    if-gez p1, :cond_3

    iput v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    :cond_3
    return-void
.end method
