.class public final Lcom/android/server/devicepolicy/DevicePolicyData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAcceptedCaCertificates:Landroid/util/ArraySet;

.field public mAdminBroadcastPending:Z

.field public final mAdminList:Ljava/util/ArrayList;

.field public final mAdminMap:Landroid/util/ArrayMap;

.field public mAffiliationIds:Ljava/util/Set;

.field public mAppsSuspended:Z

.field public mBypassDevicePolicyManagementRoleQualifications:Z

.field public mCurrentInputMethodSet:Z

.field public mCurrentRoleHolder:Ljava/lang/String;

.field public final mDelegationMap:Landroid/util/ArrayMap;

.field public mDeviceProvisioningConfigApplied:Z

.field public mDoNotAskCredentialsOnBoot:Z

.field public mEffectiveKeepProfilesRunning:Z

.field public mFactoryResetFlags:I

.field public mFactoryResetReason:Ljava/lang/String;

.field public mFailedBiometricAttempts:I

.field public mFailedPasswordAttempts:I

.field public mFailedPasswordAttemptsFromGateKeeper:I

.field public mInitBundle:Landroid/os/PersistableBundle;

.field public mLastBugReportRequestTime:J

.field public mLastMaximumTimeToLock:J

.field public mLastNetworkLogsRetrievalTime:J

.field public mLastResetPassword:I

.field public mLastSecurityLogRetrievalTime:J

.field public mLockTaskFeatures:I

.field public final mLockTaskPackages:Ljava/util/List;

.field public mNewUserDisclaimer:Ljava/lang/String;

.field public final mOwnerInstalledCaCerts:Ljava/util/Set;

.field public mPaired:Z

.field public mPasswordOwner:I

.field public mPasswordTokenHandle:J

.field public mPasswordValidAtLastCheckpoint:Z

.field public mPermissionPolicy:I

.field public final mRemovingAdmins:Ljava/util/ArrayList;

.field public mRestrictionsProvider:Landroid/content/ComponentName;

.field public mSecondaryLockscreenEnabled:Z

.field public mStatusBarDisabled:Z

.field public mUserControlDisabledPackages:Ljava/util/List;

.field public final mUserId:I

.field public mUserProvisioningState:I

.field public mUserSetupComplete:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastMaximumTimeToLock:J

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    iput-wide v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    const-string/jumbo v1, "not_needed"

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    return-void
.end method

.method public static load(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;Ljava/util/function/Function;Landroid/content/ComponentName;)V
    .locals 11

    const-string v0, "DevicePolicyManager"

    invoke-virtual {p1}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "policies"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    const-string/jumbo v4, "permission-provider"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v1, v2

    goto/16 :goto_3

    :catch_1
    move-object v1, v2

    goto/16 :goto_4

    :cond_1
    :goto_1
    const-string/jumbo v4, "setup-complete"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    :cond_2
    const-string/jumbo v4, "device-paired"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    :cond_3
    const-string/jumbo v4, "device-provisioning-config-applied"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    :cond_4
    const-string/jumbo v4, "provisioning-state"

    const/4 v6, -0x1

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_5

    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    :cond_5
    const-string/jumbo v4, "permission-policy"

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_6

    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    :cond_6
    const-string/jumbo v4, "new-user-disclaimer"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const-string/jumbo v4, "factory-reset-flags"

    const/4 v6, 0x0

    invoke-interface {v3, v1, v4, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    const-string/jumbo v4, "factory-reset-reason"

    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->clear()V

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->clear()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    :cond_7
    :goto_2
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7

    if-eq v7, v5, :cond_27

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_27

    :cond_8
    if-eq v7, v8, :cond_7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_9

    goto :goto_2

    :cond_9
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "admin"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v9, "name"

    if-eqz v8, :cond_a

    :try_start_2
    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    invoke-interface {p2, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DeviceAdminInfo;

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v5

    new-instance v10, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-direct {v10, v8, v6}, Lcom/android/server/devicepolicy/ActiveAdmin;-><init>(Landroid/app/admin/DeviceAdminInfo;Z)V

    invoke-virtual {v10, v3, v9}, Lcom/android/server/devicepolicy/ActiveAdmin;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Z)V

    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    iget-object v9, v10, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v9}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    move-exception v8

    :try_start_4
    const-string v9, "Failed loading admin %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v8, v9, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_a
    const-string/jumbo v8, "delegation"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string/jumbo v7, "delegatePackage"

    invoke-interface {v3, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "scope"

    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_b

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v8, "failed-password-attempts"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    const-string/jumbo v10, "value"

    if-eqz v8, :cond_d

    :try_start_5
    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v8, "failed-password-attempts-from-gatekeeper"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v8, "failed-biometric-attempts"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v8, "last-resetpassword-admin"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v8, "password-owner"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v8, "accepted-ca-certificate"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v8, "lock-task-component"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v8, "lock-task-features"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v8, "secondary-lock-screen"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    goto/16 :goto_2

    :cond_15
    const-string/jumbo v8, "statusbar"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string/jumbo v7, "disabled"

    invoke-interface {v3, v1, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v8, "do-not-ask-credentials-on-boot"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v8, "affiliation-id"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    const-string/jumbo v8, "id"

    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v8, "last-security-log-retrieval"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    goto/16 :goto_2

    :cond_19
    const-string/jumbo v8, "last-bug-report-request"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    goto/16 :goto_2

    :cond_1a
    const-string/jumbo v8, "last-network-log-retrieval"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    goto/16 :goto_2

    :cond_1b
    const-string/jumbo v8, "admin-broadcast-pending"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    goto/16 :goto_2

    :cond_1c
    const-string/jumbo v8, "initialization-bundle"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static {v3}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    goto/16 :goto_2

    :cond_1d
    const-string/jumbo v8, "password-token"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    goto/16 :goto_2

    :cond_1e
    const-string/jumbo v8, "current-ime-set"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    goto/16 :goto_2

    :cond_1f
    const-string/jumbo v8, "owner-installed-ca-cert"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    const-string/jumbo v8, "alias"

    invoke-interface {v3, v1, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_20
    const-string/jumbo v8, "apps-suspended"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    goto/16 :goto_2

    :cond_21
    const-string/jumbo v8, "bypass-role-qualifications"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    iput-boolean v5, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    invoke-interface {v3, v1, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    goto/16 :goto_2

    :cond_22
    const-string/jumbo v8, "keep-profiles-running"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v3, v1, v10, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    goto/16 :goto_2

    :cond_23
    const-string/jumbo v8, "protected-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    if-nez v7, :cond_24

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    :cond_24
    iget-object v7, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserControlDisabledPackages:Ljava/util/List;

    invoke-interface {v3, v1, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_25
    const-string/jumbo v8, "Unknown tag: %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v8, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    :cond_26
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Settings do not start with policies tag: found "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_3
    move-exception p2

    :goto_3
    const-string/jumbo p3, "failed parsing %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p2, p3, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_4
    :goto_4
    move-object v2, v1

    :cond_27
    if-eqz v2, :cond_28

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :catch_5
    :cond_28
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static store(Lcom/android/server/devicepolicy/DevicePolicyData;Lcom/android/internal/util/JournaledFile;)Z
    .locals 38

    move-object/from16 v0, p0

    const-string/jumbo v1, "keep-profiles-running"

    const-string/jumbo v2, "bypass-role-qualifications"

    const-string/jumbo v3, "apps-suspended"

    const-string/jumbo v4, "owner-installed-ca-cert"

    const-string/jumbo v5, "current-ime-set"

    const-string/jumbo v6, "password-token"

    const-string/jumbo v7, "initialization-bundle"

    const-string/jumbo v8, "admin-broadcast-pending"

    const-string/jumbo v9, "last-network-log-retrieval"

    const-string/jumbo v10, "last-bug-report-request"

    const-string/jumbo v11, "last-security-log-retrieval"

    const-string/jumbo v12, "affiliation-id"

    const-string/jumbo v13, "do-not-ask-credentials-on-boot"

    const-string/jumbo v14, "statusbar"

    const-string/jumbo v15, "secondary-lock-screen"

    move-object/from16 v16, v1

    const-string/jumbo v1, "lock-task-features"

    move-object/from16 v17, v2

    const-string/jumbo v2, "lock-task-component"

    move-object/from16 v18, v3

    const-string/jumbo v3, "accepted-ca-certificate"

    move-object/from16 v19, v4

    const-string/jumbo v4, "last-resetpassword-admin"

    move-object/from16 v20, v5

    const-string/jumbo v5, "failed-biometric-attempts"

    move-object/from16 v21, v6

    const-string/jumbo v6, "failed-password-attempts-from-gatekeeper"

    move-object/from16 v22, v7

    const-string/jumbo v7, "failed-password-attempts"

    move-object/from16 v23, v8

    const-string/jumbo v8, "password-owner"

    move-object/from16 v24, v9

    const-string/jumbo v9, "admin"

    move-object/from16 v25, v10

    const-string/jumbo v10, "delegation"

    move-object/from16 v26, v11

    const-string/jumbo v11, "policies"

    move-object/from16 v27, v12

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v12
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v29, v13

    :try_start_1
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v30, v14

    const/4 v14, 0x0

    invoke-direct {v13, v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    invoke-static {v13}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v14
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v31, v12

    :try_start_3
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v32, v13

    const/4 v13, 0x0

    :try_start_4
    invoke-interface {v14, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v14, v13, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mRestrictionsProvider:Landroid/content/ComponentName;

    if-eqz v12, :cond_0

    const-string/jumbo v13, "permission-provider"

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v33, v11

    const/4 v11, 0x0

    invoke-interface {v14, v11, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    move-object/from16 v12, v31

    goto/16 :goto_b

    :cond_0
    move-object/from16 v33, v11

    :goto_1
    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_1

    const-string/jumbo v11, "setup-complete"

    const/4 v13, 0x0

    invoke-interface {v14, v13, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPaired:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "device-paired"

    const/4 v13, 0x0

    invoke-interface {v14, v13, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-boolean v11, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    if-eqz v11, :cond_3

    const-string/jumbo v11, "device-provisioning-config-applied"

    const/4 v13, 0x0

    invoke-interface {v14, v13, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget v11, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserProvisioningState:I

    if-eqz v11, :cond_4

    const-string/jumbo v13, "provisioning-state"

    const/4 v12, 0x0

    invoke-interface {v14, v12, v13, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget v11, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPermissionPolicy:I

    if-eqz v11, :cond_5

    const-string/jumbo v12, "permission-policy"

    const/4 v13, 0x0

    invoke-interface {v14, v13, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string/jumbo v11, "needed"

    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string/jumbo v11, "new-user-disclaimer"

    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mNewUserDisclaimer:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v14, v13, v11, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget v11, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetFlags:I

    if-eqz v11, :cond_7

    const-string/jumbo v12, "factory-reset-flags"

    const/4 v13, 0x0

    invoke-interface {v14, v13, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-object v11, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFactoryResetReason:Ljava/lang/String;

    if-eqz v11, :cond_8

    const-string/jumbo v12, "factory-reset-reason"

    const/4 v13, 0x0

    invoke-interface {v14, v13, v12, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    const/4 v11, 0x0

    :goto_2
    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_a

    iget-object v12, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move/from16 v36, v11

    move-object/from16 v11, v35

    check-cast v11, Ljava/lang/String;

    move-object/from16 v35, v13

    const/4 v13, 0x0

    invoke-interface {v14, v13, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v37, v15

    const-string/jumbo v15, "delegatePackage"

    invoke-interface {v14, v13, v15, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v15, "scope"

    invoke-interface {v14, v13, v15, v11}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v13, v35

    move/from16 v11, v36

    move-object/from16 v15, v37

    goto :goto_3

    :cond_9
    move/from16 v36, v11

    move-object/from16 v37, v15

    add-int/lit8 v11, v36, 0x1

    goto :goto_2

    :cond_a
    move-object/from16 v37, v15

    iget-object v10, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v11, 0x0

    :goto_4
    const-string/jumbo v12, "name"

    if-ge v11, v10, :cond_c

    :try_start_5
    iget-object v13, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/devicepolicy/ActiveAdmin;

    if-eqz v13, :cond_b

    const/4 v15, 0x0

    invoke-interface {v14, v15, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v15, v13, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v15}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    move/from16 v35, v10

    const/4 v10, 0x0

    invoke-interface {v14, v10, v12, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v13, v14}, Lcom/android/server/devicepolicy/ActiveAdmin;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {v14, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    :cond_b
    move/from16 v35, v10

    :goto_5
    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v35

    goto :goto_4

    :cond_c
    iget v9, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    const-string/jumbo v10, "value"

    if-ltz v9, :cond_d

    const/4 v13, 0x0

    :try_start_6
    invoke-interface {v14, v13, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v9, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-interface {v14, v13, v10, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget v8, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    if-eqz v8, :cond_e

    const/4 v13, 0x0

    invoke-interface {v14, v13, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v8, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttempts:I

    invoke-interface {v14, v13, v10, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_e
    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    if-eqz v7, :cond_f

    const/4 v13, 0x0

    invoke-interface {v14, v13, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v7, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedPasswordAttemptsFromGateKeeper:I

    invoke-interface {v14, v13, v10, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_f
    iget v6, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_10

    iget v6, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    if-eqz v6, :cond_10

    const/4 v13, 0x0

    invoke-interface {v14, v13, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v6, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mFailedBiometricAttempts:I

    invoke-interface {v14, v13, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_11

    const/4 v13, 0x0

    invoke-interface {v14, v13, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastResetPassword:I

    invoke-interface {v14, v13, v10, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    const/4 v4, 0x0

    :goto_6
    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_12

    const/4 v13, 0x0

    invoke-interface {v14, v13, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v14, v13, v12, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_12
    const/4 v3, 0x0

    :goto_7
    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_13

    iget-object v4, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v14, v13, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v12, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_13
    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    if-eqz v2, :cond_14

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLockTaskFeatures:I

    invoke-interface {v14, v13, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_14
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mSecondaryLockscreenEnabled:Z

    if-eqz v1, :cond_15

    move-object/from16 v1, v37

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x1

    invoke-interface {v14, v13, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    if-eqz v1, :cond_16

    move-object/from16 v1, v30

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "disabled"

    iget-boolean v3, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mStatusBarDisabled:Z

    invoke-interface {v14, v13, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_16
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mDoNotAskCredentialsOnBoot:Z

    if-eqz v1, :cond_17

    move-object/from16 v1, v29

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_17
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v3, v27

    const/4 v13, 0x0

    invoke-interface {v14, v13, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "id"

    invoke-interface {v14, v13, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v27, v3

    goto :goto_8

    :cond_18
    iget-wide v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_19

    move-object/from16 v1, v26

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    invoke-interface {v14, v13, v10, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_19
    iget-wide v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1a

    move-object/from16 v1, v25

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastBugReportRequestTime:J

    invoke-interface {v14, v13, v10, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1a
    iget-wide v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1b

    move-object/from16 v1, v24

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v5, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    invoke-interface {v14, v13, v10, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1b
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    if-eqz v1, :cond_1c

    move-object/from16 v1, v23

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminBroadcastPending:Z

    invoke-interface {v14, v13, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1c
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    if-eqz v1, :cond_1d

    move-object/from16 v1, v22

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v2, v14}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1d
    iget-wide v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1e

    move-object/from16 v1, v21

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordTokenHandle:J

    invoke-interface {v14, v13, v10, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1e
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentInputMethodSet:Z

    if-eqz v1, :cond_1f

    move-object/from16 v1, v20

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1f
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v3, v19

    const/4 v13, 0x0

    invoke-interface {v14, v13, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "alias"

    invoke-interface {v14, v13, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v19, v3

    goto :goto_9

    :cond_20
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    if-eqz v1, :cond_21

    move-object/from16 v1, v18

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAppsSuspended:Z

    invoke-interface {v14, v13, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_21
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mBypassDevicePolicyManagementRoleQualifications:Z

    if-eqz v1, :cond_22

    move-object/from16 v1, v17

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    invoke-interface {v14, v13, v10, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_22
    iget-boolean v1, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    if-eqz v1, :cond_23

    move-object/from16 v1, v16

    const/4 v13, 0x0

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-boolean v0, v0, Lcom/android/server/devicepolicy/DevicePolicyData;->mEffectiveKeepProfilesRunning:Z

    invoke-interface {v14, v13, v10, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14, v13, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_23
    move-object/from16 v0, v33

    const/4 v13, 0x0

    invoke-interface {v14, v13, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->flush()V

    invoke-static/range {v32 .. v32}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    const/16 v34, 0x1

    return v34

    :catch_1
    move-exception v0

    move-object/from16 v32, v13

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object/from16 v31, v12

    :goto_a
    move-object/from16 v32, v13

    goto :goto_b

    :catch_3
    move-exception v0

    move-object/from16 v31, v12

    const/4 v13, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    const/4 v13, 0x0

    move-object v12, v13

    move-object/from16 v32, v12

    :goto_b
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "DevicePolicyManager"

    const-string/jumbo v3, "failed writing file %s"

    invoke-static {v2, v0, v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v32, :cond_24

    :try_start_7
    invoke-virtual/range {v32 .. v32}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    const/16 v28, 0x0

    return v28
.end method

.method public static sync(Ljava/io/File;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "DevicePolicyManager"

    const-string/jumbo v3, "failed writing file %s"

    invoke-static {v2, v0, v3, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_0
    return-void
.end method


# virtual methods
.method public final validatePasswordOwner()V
    .locals 3

    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicepolicy/ActiveAdmin;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getUid()I

    move-result v1

    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "DevicePolicyManager"

    const-string/jumbo v2, "Previous password owner %s no longer active; disabling"

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyData;->mPasswordOwner:I

    :cond_2
    return-void
.end method
