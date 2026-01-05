.class public abstract Lcom/android/server/am/mars/database/FASTableContract;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

.field public static final FASQueryProjectionV1:[Ljava/lang/String;

.field public static final FASQueryProjectionV2:[Ljava/lang/String;

.field public static final FASQueryProjectionV3:[Ljava/lang/String;

.field public static final SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

.field public static final SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

.field public static final SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

.field public static final SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

.field public static final SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

.field public static final disableReasonProjection:[Ljava/lang/String;

.field public static final preBattetyUsageProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string/jumbo v0, "content://com.sec.android.sdhms.fasprovider/ForcedAppStandby"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FORCED_APP_STANDBY_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm.battery.bridge"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->DC_AUTHORITY_FAS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "prevCurrent"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->preBattetyUsageProjection:[Ljava/lang/String;

    const-string/jumbo v0, "disableReason"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->disableReasonProjection:[Ljava/lang/String;

    const-string/jumbo v10, "disableType"

    const-string/jumbo v11, "disableResetTime"

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string/jumbo v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV1:[Ljava/lang/String;

    const-string/jumbo v11, "disableResetTime"

    const-string/jumbo v12, "prevCurrent"

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string/jumbo v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    const-string/jumbo v10, "disableType"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV2:[Ljava/lang/String;

    const-string/jumbo v12, "prevCurrent"

    const-string/jumbo v13, "disableReason"

    const-string/jumbo v1, "package_name"

    const-string/jumbo v2, "uid"

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "new"

    const-string/jumbo v5, "reason"

    const-string/jumbo v6, "extras"

    const-string/jumbo v7, "resetTime"

    const-string/jumbo v8, "packageType"

    const-string/jumbo v9, "level"

    const-string/jumbo v10, "disableType"

    const-string/jumbo v11, "disableResetTime"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->FASQueryProjectionV3:[Ljava/lang/String;

    const-string/jumbo v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_SETTINGS_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm/DefaultAllowedList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_DEFAULT_ALLOWED_LIST_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm.appstart/appstart_record"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_APP_STARTUP_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.sm/FreezeExcludeList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/FASTableContract;->SMART_MGR_FREEZE_EXCLUDE_LIST_URI:Landroid/net/Uri;

    return-void
.end method

.method public static convertDBValueToDisableReason(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "default"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string/jumbo v0, "added_from_mars_auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string/jumbo v0, "added_from_user_manual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const-string/jumbo v0, "deleted_from_mars_auto"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-string/jumbo v0, "deleted_from_user_manual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x8

    return p0

    :cond_4
    const-string/jumbo v0, "added_from_mars_auto_specific"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0x10

    return p0

    :cond_5
    const-string/jumbo v0, "added_from_anomaly_manual"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x20

    return p0

    :cond_6
    const/4 p0, -0x1

    return p0
.end method

.method public static convertDisableReasonToDBValue(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    const-string/jumbo p0, "added_from_anomaly_manual"

    return-object p0

    :cond_1
    const-string/jumbo p0, "added_from_mars_auto_specific"

    return-object p0

    :cond_2
    const-string/jumbo p0, "deleted_from_user_manual"

    return-object p0

    :cond_3
    const-string/jumbo p0, "deleted_from_mars_auto"

    return-object p0

    :cond_4
    const-string/jumbo p0, "added_from_user_manual"

    return-object p0

    :cond_5
    const-string/jumbo p0, "added_from_mars_auto"

    return-object p0

    :cond_6
    const-string/jumbo p0, "default"

    return-object p0
.end method

.method public static convertFASReasonToValue(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "default"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string/jumbo v1, "added_from_mars_auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string/jumbo v1, "added_from_user_manual"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const-string/jumbo v1, "added_from_anomaly_auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const-string/jumbo v1, "added_from_anomaly_manual"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 p0, 0x8

    return p0

    :cond_5
    const-string/jumbo v1, "added_from_pre_o"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0x10

    return p0

    :cond_6
    const-string/jumbo v1, "added_from_policy_in_china"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 p0, 0x20

    return p0

    :cond_7
    const-string/jumbo v1, "added_from_unknown"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 p0, 0x40

    return p0

    :cond_8
    const-string/jumbo v1, "deleted_from_mars_auto"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p0, 0x80

    return p0

    :cond_9
    const-string/jumbo v1, "deleted_from_user_manual"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 p0, 0x100

    return p0

    :cond_a
    const-string/jumbo v1, "deleted_from_post_o"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 p0, 0x200

    return p0

    :cond_b
    const-string/jumbo v1, "deleted_from_policy_in_china"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 p0, 0x800

    return p0

    :cond_c
    const-string/jumbo v1, "deleted_from_unknown"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/16 p0, 0x1000

    return p0

    :cond_d
    return v0
.end method

.method public static convertFASTypeToReason(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/16 v0, 0x8

    if-eq p0, v0, :cond_8

    const/16 v0, 0x10

    if-eq p0, v0, :cond_7

    const/16 v0, 0x20

    if-eq p0, v0, :cond_6

    const/16 v0, 0x40

    if-eq p0, v0, :cond_5

    const/16 v0, 0x80

    if-eq p0, v0, :cond_4

    const/16 v0, 0x100

    if-eq p0, v0, :cond_3

    const/16 v0, 0x200

    if-eq p0, v0, :cond_2

    const/16 v0, 0x800

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "null"

    return-object p0

    :cond_0
    const-string/jumbo p0, "deleted_from_unknown"

    return-object p0

    :cond_1
    const-string/jumbo p0, "deleted_from_policy_in_china"

    return-object p0

    :cond_2
    const-string/jumbo p0, "deleted_from_post_o"

    return-object p0

    :cond_3
    const-string/jumbo p0, "deleted_from_user_manual"

    return-object p0

    :cond_4
    const-string/jumbo p0, "deleted_from_mars_auto"

    return-object p0

    :cond_5
    const-string/jumbo p0, "added_from_unknown"

    return-object p0

    :cond_6
    const-string/jumbo p0, "added_from_policy_in_china"

    return-object p0

    :cond_7
    const-string/jumbo p0, "added_from_pre_o"

    return-object p0

    :cond_8
    const-string/jumbo p0, "added_from_anomaly_manual"

    return-object p0

    :cond_9
    const-string/jumbo p0, "added_from_anomaly_auto"

    return-object p0

    :cond_a
    const-string/jumbo p0, "added_from_user_manual"

    return-object p0

    :cond_b
    const-string/jumbo p0, "added_from_mars_auto"

    return-object p0

    :cond_c
    const-string/jumbo p0, "default"

    return-object p0
.end method

.method public static convertStateToDBExtrasValue(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const-string p0, "4"

    return-object p0

    :cond_1
    const-string p0, "3"

    return-object p0

    :cond_2
    const-string p0, "2"

    return-object p0

    :cond_3
    const-string p0, "1"

    return-object p0
.end method
