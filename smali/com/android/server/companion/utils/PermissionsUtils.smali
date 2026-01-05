.class public abstract Lcom/android/server/companion/utils/PermissionsUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

.field public static final SYSTEM_ONLY_DEVICE_PROFILES:Ljava/util/Set;

.field public static sAppOpsService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v1, "android.companion.COMPANION_DEVICE_WEARABLE_SENSING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->SYSTEM_ONLY_DEVICE_PROFILES:Ljava/util/Set;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string/jumbo v1, "android.app.role.COMPANION_DEVICE_WATCH"

    const-string/jumbo v2, "android.permission.REQUEST_COMPANION_PROFILE_WATCH"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    const-string/jumbo v2, "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    const-string/jumbo v2, "android.permission.REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.app.role.COMPANION_DEVICE_COMPUTER"

    const-string/jumbo v2, "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.app.role.COMPANION_DEVICE_GLASSES"

    const-string/jumbo v2, "android.permission.REQUEST_COMPANION_PROFILE_GLASSES"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    const-string/jumbo v2, "android.permission.REQUEST_COMPANION_PROFILE_NEARBY_DEVICE_STREAMING"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

    const-string/jumbo v2, "android.permission.REQUEST_COMPANION_PROFILE_VIRTUAL_DEVICE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-void
.end method

.method public static checkPackage(ILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v1, :cond_1

    const-class v1, Lcom/android/server/companion/utils/PermissionsUtils;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "appops"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    sput-object v2, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_2
    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->sAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :catch_0
    return v0
.end method

.method public static enforceCallerCanManageAssociationsForPackage(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p1, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    const-string/jumbo v4, "android.permission.MANAGE_COMPANION_DEVICES"

    invoke-virtual {p1, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    move v2, v3

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    if-ne p1, p0, :cond_3

    invoke-static {v0, p2}, Lcom/android/server/companion/utils/PermissionsUtils;->checkPackage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    new-instance p1, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Caller (uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") does not have permissions to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    const-string/jumbo p3, "manage associations"

    :goto_2
    const-string v1, " for u"

    const-string v2, "/"

    invoke-static {p0, p3, v1, v2, v0}, Lcom/android/server/RescueParty$RescuePartyObserver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static enforceCallerCanObserveDevicePresenceByUuid(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    const-string/jumbo v0, "android.permission.REQUEST_OBSERVE_DEVICE_UUID_PRESENCE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.permission.BLUETOOTH_SCAN"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/companion/utils/PermissionsUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Caller (uid="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") does not have permissions to request observing device presence base on the UUID"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-ne v0, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string/jumbo p1, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static enforcePermissionForCreatingAssociation(Landroid/content/Context;Landroid/companion/AssociationRequest;I)V
    .locals 5

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceProfile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/android/server/companion/utils/PermissionsUtils;->DEVICE_PROFILE_TO_PERMISSION:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/server/companion/utils/PermissionsUtils;->SYSTEM_ONLY_DEVICE_PROFILES:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Unsupported device profile: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sget-object v2, Lcom/android/server/companion/utils/PermissionsUtils;->SYSTEM_ONLY_DEVICE_PROFILES:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, " profile."

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v4, 0x3e8

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller must be system to associate with a device with "

    invoke-static {p1, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Application must hold "

    const-string p2, " to associate with a device with "

    invoke-static {p1, v1, p2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->isSelfManaged()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/companion/AssociationRequest;->getDeviceIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    if-eqz p1, :cond_8

    :cond_7
    const-string/jumbo p1, "android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_9

    :cond_8
    return-void

    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Application does not hold android.permission.REQUEST_COMPANION_SELF_MANAGED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
