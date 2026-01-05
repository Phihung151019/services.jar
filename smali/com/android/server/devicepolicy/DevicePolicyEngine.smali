.class public final Lcom/android/server/devicepolicy/DevicePolicyEngine;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;


# instance fields
.field public final mAdminPolicySize:Landroid/util/SparseArray;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

.field public final mEnforcingAdmins:Landroid/util/SparseArray;

.field public final mGlobalPolicies:Ljava/util/Map;

.field public final mLocalPolicies:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPolicySizeLimit:I

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "no_cellular_2g"

    invoke-static {v0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/DeviceAdminServiceController;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    const-class p2, Landroid/os/UserManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    return-void
.end method

.method public static getUserRestrictionPolicyKeysForAdminLocked(Ljava/util/Map;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/util/Set;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget v3, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyValue;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast v2, Landroid/app/admin/UserRestrictionPolicyKey;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {p0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "userControlDisabledPackages"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "packagesSuspended"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static sizeOf(Landroid/app/admin/PolicyValue;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Error calculating size of policy: "

    const-string v2, "DevicePolicyEngine"

    invoke-static {p0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public final applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez p4, :cond_2

    iget-object v6, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {p0, p1, v6, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    invoke-virtual {p0, v5, p2, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    :cond_2
    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {v4}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p3}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_1

    :cond_3
    move v4, v0

    :goto_1
    and-int/2addr v3, v4

    goto :goto_2

    :cond_4
    iget-object v4, v5, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {p3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    iget v1, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    iget v1, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PolicyValue;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result p1

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final dump(Landroid/util/IndentingPrintWriter;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "Local Policies: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-string/jumbo v4, "User %d:\n"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/PolicyKey;

    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v5, p1}, Lcom/android/server/devicepolicy/PolicyState;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Global Policies: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v3, p1}, Lcom/android/server/devicepolicy/PolicyState;->dump(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string v2, "Default admin policy size limit: -1"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current admin policy size limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "Admin Policies size: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-string/jumbo v4, "User %d:\n"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Admin : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v6}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_4

    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V
    .locals 1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p2

    :goto_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {v0, p2, p0, p3, p1}, Lcom/android/internal/util/function/QuadFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public final forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of v0, v0, Landroid/app/admin/UserRestrictionPolicyKey;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/lang/Object;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "DevicePolicyEngine"

    const-string v0, "Exception thrown during forceEnforcementRefreshIfUserRestrictionLocked"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final getEnforcingAdminsOnUser(I)Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object v1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getGlobalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;)Ljava/util/LinkedHashMap;
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getGlobalPolicySetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/PolicyValue;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;
    .locals 3

    iget v0, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    new-instance v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-direct {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    :try_start_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is a local only policy."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLocalPoliciesSetByAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/LinkedHashMap;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLocalPolicyKeysSetByAllAdmins(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/util/Set;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/PolicyKey;

    iget-object v2, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {p2, v2}, Landroid/app/admin/PolicyKey;->hasSameIdentifierAs(Landroid/app/admin/PolicyKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLocalPolicySetByAdmin(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/PolicyValue;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    new-instance v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-direct {v2, p1}, Lcom/android/server/devicepolicy/PolicyState;-><init>(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    :try_start_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is a global only policy."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getResolvedPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getResolvedPolicyValue(Lcom/android/server/devicepolicy/PolicyDefinition;I)Landroid/app/admin/PolicyValue;
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    iget v1, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    const/4 v1, 0x0

    iget v2, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PolicyValue;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-static {p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sizeOf(Landroid/app/admin/PolicyValue;)I

    move-result p3

    iget v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mPolicySizeLimit:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    add-int/2addr v0, p3

    sub-int/2addr v0, p1

    if-ge v0, v3, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Admin "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "reached max allowed storage limit."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "DevicePolicyEngine"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    invoke-virtual {p0, p2, p4, p1, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    return v1

    :cond_3
    :goto_2
    sub-int/2addr p3, p1

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, v2, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mAdminPolicySize:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int/2addr p0, p3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public final handleUserRemoved(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/EnforcingAdmin;

    iget-object v5, v2, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p0, v5, v4, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z
    .locals 4

    iget v0, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v2

    return p0
.end method

.method public final hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isGlobalOnlyPolicy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v2, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final maybeSendIntentToAdminReceivers(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const-string/jumbo v2, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Receiver "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not protected by BIND_DEVICE_ADMIN permission!"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    .locals 2

    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    :cond_0
    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {p1}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "semSet"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    :cond_1
    return-void
.end method

.method public final reapplyAllPoliciesOnBootLocked()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyKey;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/PolicyState;

    iget-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget v3, v2, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyKey;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/PolicyState;

    iget-object v4, v3, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget v5, v4, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, v3, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {p0, v4, v3, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 6

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    iget-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    :goto_0
    move v4, v3

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, v1, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    iget-object v2, v2, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    iput-object v2, v1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    const/4 v2, -0x1

    if-eqz v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {p0, p1, v5, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    invoke-virtual {p0, v4, p2, p1, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    iget-object v4, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v4}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "semSet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Z

    const/4 v3, 0x2

    invoke-virtual {p0, p2, p1, v3, v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V
    .locals 9

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->decreasePolicySizeForAdmin(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    monitor-exit v1

    return-void

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object p0, v4

    move v4, p3

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    move-result p2

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_0

    :cond_5
    iget-object p2, p0, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    iget-object p1, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {p1, p2}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    :goto_0
    if-eqz p2, :cond_6

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    :cond_6
    const/4 p1, 0x2

    invoke-virtual {v2, v5, v3, p1, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_1

    :cond_7
    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    iget-object p1, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_1
    invoke-virtual {v2, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    iget p0, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_9

    move-object v6, v3

    move-object v3, v2

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;

    move-object v7, v5

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_9
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removePoliciesForAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p0, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/PolicyKey;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v4}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v4, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p0, v4, p1, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendDevicePolicyChangedToSystem(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/app/BroadcastOptions;

    invoke-direct {v1}, Landroid/app/BroadcastOptions;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/devicepolicy/EnforcingAdmin;

    invoke-virtual {v5, p2}, Lcom/android/server/devicepolicy/EnforcingAdmin;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v1, "android.app.admin.action.DEVICE_POLICY_CHANGED"

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;

    const/4 v9, 0x1

    move-object v3, p0

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;III)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    move-object p0, v3

    move-object p3, v6

    move p4, v7

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V
    .locals 8

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Landroid/content/Intent;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;III)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final setGlobalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)V
    .locals 8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v3

    const/4 v7, -0x1

    move-object v2, p0

    move-object v6, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result p0

    if-nez p0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_0
    iget-object p0, v6, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {p0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/server/devicepolicy/DevicePolicyEngine;->CELLULAR_2G_USER_RESTRICTION_ID:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p0, :cond_2

    :cond_1
    move p0, p3

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "CAPABILITY_USES_ALLOWED_NETWORK_TYPES_BITMASK"

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move p0, p3

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x4

    :try_start_2
    invoke-virtual {v2, v4, v6, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    move p0, p2

    :goto_1
    if-eqz p0, :cond_3

    const-string p0, "DevicePolicyEngine"

    const-string p1, "Device does not support capabilities required to disable 2g. Not setting global policy state."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v4, v5}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    move-result p0

    invoke-virtual {v2, v6, v4, v5, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->applyGlobalPolicyOnUsersWithLocalPoliciesLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Z)Z

    move-result v0

    if-nez p4, :cond_8

    invoke-virtual {v2, v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    if-eqz p0, :cond_4

    invoke-virtual {v2, v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    iget-object p4, p0, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-virtual {v2, v6, p4, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    invoke-virtual {v2, p0, v4, v6, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyChangedToAdminsLocked(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;I)V

    iget-object p0, v6, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {p0}, Landroid/app/admin/PolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p4, "semSet"

    invoke-virtual {p0, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendDevicePolicyChangedToSystem(I)V

    :cond_4
    iget-object p0, v3, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {p0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-static {v6}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p0, v3, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-virtual {v5}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    invoke-interface {p0, p4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_5

    move p0, p2

    goto :goto_2

    :cond_5
    move p0, p3

    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    if-eqz v0, :cond_7

    move p3, p2

    :cond_7
    xor-int/lit8 p0, p3, 0x1

    invoke-virtual {v2, v4, v6, p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    :cond_8
    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    monitor-exit v1

    :goto_3
    return-void

    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V
    .locals 10

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getLocalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;I)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object v3

    move-object v2, p0

    move-object v6, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->handleAdminPolicySizeLimit(Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;I)Z

    move-result p0

    move-object p1, v3

    move-object v3, v6

    if-nez p0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result p0

    if-eqz p0, :cond_1

    move v8, p5

    move-object v6, v5

    move-object v5, v4

    move-object v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    monitor-exit v1

    return-void

    :cond_1
    move v8, p5

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->hasGlobalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getGlobalPolicyStateLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)Lcom/android/server/devicepolicy/PolicyState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/android/server/devicepolicy/PolicyState;->resolvePolicy(Ljava/util/LinkedHashMap;)Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v4, v5}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    move-result p0

    :goto_0
    if-nez v8, :cond_6

    invoke-virtual {v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->forceEnforcementRefreshIfUserRestrictionLocked(Lcom/android/server/devicepolicy/PolicyDefinition;)V

    if-eqz p0, :cond_3

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->onLocalPolicyChangedLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    :cond_3
    iget-object p0, p1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {p0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-nez p0, :cond_5

    invoke-static {v3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->shouldApplyPackageSetUnionPolicyHack(Lcom/android/server/devicepolicy/PolicyDefinition;)Z

    move-result p3

    if-eqz p3, :cond_5

    iget-object p0, p1, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    if-eqz p0, :cond_4

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-virtual {v5}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, p2

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :cond_5
    :goto_1
    xor-int/2addr p0, p2

    invoke-virtual {v2, v4, v3, p0, v7}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->sendPolicyResultToAdmin(Lcom/android/server/devicepolicy/EnforcingAdmin;Lcom/android/server/devicepolicy/PolicyDefinition;II)V

    :cond_6
    invoke-virtual {v2, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    iget p0, v3, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_7

    move-object v9, v4

    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;

    move-object v8, v3

    move v6, v7

    move-object v7, v5

    move-object v5, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_7
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setNonCoexistableLocalPolicyLocked(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/PolicyState;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V
    .locals 6

    if-nez p4, :cond_2

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p3}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lcom/android/server/devicepolicy/PolicyState;->mPolicyDefinition:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p2, Lcom/android/server/devicepolicy/PolicyState;->mPoliciesSetByAdmins:Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/ResolutionMechanism;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object v0, p2, Lcom/android/server/devicepolicy/PolicyState;->mCurrentResolvedPolicy:Landroid/app/admin/PolicyValue;

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p3, p4}, Lcom/android/server/devicepolicy/PolicyState;->addPolicy(Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;)Z

    :goto_0
    if-nez p6, :cond_3

    invoke-virtual {p0, p1, p4, p5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->enforcePolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Landroid/app/admin/PolicyValue;I)V

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->contains(I)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {p2, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    iget-object p6, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-interface {p2, p6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->write()V

    iget p2, p1, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_6

    new-instance v0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    move-object v3, p4

    move v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_6
    return-void
.end method

.method public final updateDeviceAdminServiceOnPolicyAddLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 4

    iget v0, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "enterprise"

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    iget-object p1, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(ILjava/lang/String;)V

    return-void
.end method

.method public final updateDeviceAdminServiceOnPolicyRemoveLocked(Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyKey;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mGlobalPolicies:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/PolicyKey;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLocalPolicies:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/PolicyState;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/PolicyState;->getPoliciesSetByAdmins()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mEnforcingAdmins:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_5
    const-string/jumbo v1, "enterprise"

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    return-void

    :cond_6
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    iget-object p1, p1, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServiceForAdmin(ILjava/lang/String;)V

    return-void
.end method

.method public final updateDeviceAdminsServicesForUser(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mDeviceAdminServiceController:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    if-nez p2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->stopServicesForUser(I)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->getEnforcingAdminsOnUser(I)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    const-string/jumbo v1, "enterprise"

    invoke-virtual {p2, v1}, Lcom/android/server/devicepolicy/EnforcingAdmin;->hasAuthority(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p2, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->startServiceForAdmin(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final write()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DevicePolicyEngine"

    const-string/jumbo v2, "Writing device policies to file."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;

    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;)V

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyEngine$DevicePoliciesReaderWriter;->writeToFileLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
