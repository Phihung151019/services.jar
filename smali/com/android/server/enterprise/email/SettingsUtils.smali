.class public abstract Lcom/android/server/enterprise/email/SettingsUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static adminPkg:Ljava/lang/String;

.field public static emails:Landroid/content/Context;

.field public static final mServerPassword:Ljava/util/Map;

.field public static final mServerPasswordFocus:Ljava/util/Map;

.field public static preCallingUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string/jumbo v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string/jumbo v0, "content://com.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPasswordFocus:Ljava/util/Map;

    return-void
.end method

.method public static createIDforAccount()J
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    :cond_0
    const-string/jumbo v2, "SettingsUtils"

    const-string v3, ">>>>  createIDforAccount   <<<<"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v0
.end method

.method public static getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 44

    move-wide/from16 v0, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    const-string/jumbo v4, "value"

    const-string/jumbo v5, "name"

    const-string/jumbo v6, "_id"

    const-string/jumbo v7, "account_id = "

    const-string/jumbo v8, "getAccount row count : "

    const-string/jumbo v9, "_id = "

    const-string/jumbo v10, "getAccountDetails : USER space   "

    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    const-string/jumbo v12, "SettingsUtils"

    const/4 v13, 0x0

    if-gtz v11, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getEASAccounts fail : invalid account Id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    :cond_0
    invoke-static {v3}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v11

    const-string/jumbo v14, "getEASAccounts() :    "

    invoke-static {v11, v14, v12}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v34, "signature"

    const-string/jumbo v35, "calendarSyncLookback"

    const-string/jumbo v15, "_id"

    const-string/jumbo v16, "displayName"

    const-string/jumbo v17, "emailAddress"

    const-string/jumbo v18, "syncLookback"

    const-string/jumbo v19, "syncInterval"

    const-string/jumbo v20, "peakDays"

    const-string/jumbo v21, "peakStartMinute"

    const-string/jumbo v22, "peakEndMinute"

    const-string/jumbo v23, "peakSchedule"

    const-string/jumbo v24, "offPeakSchedule"

    const-string/jumbo v25, "roamingSchedule"

    const-string/jumbo v26, "hostAuthKeyRecv"

    const-string/jumbo v27, "hostAuthKeySend"

    const-string/jumbo v28, "flags"

    const-string/jumbo v29, "isDefault"

    const-string/jumbo v30, "compatibilityUuid"

    const-string/jumbo v31, "senderName"

    const-string/jumbo v32, "ringtoneUri"

    const-string/jumbo v33, "protocolVersion"

    const-string/jumbo v36, "emailsize"

    const-string/jumbo v37, "roamingemailsize"

    filled-new-array/range {v15 .. v37}, [Ljava/lang/String;

    move-result-object v40

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    move-object/from16 v16, v13

    const/4 v13, 0x0

    if-eqz v11, :cond_2

    :try_start_0
    invoke-static {v11}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string/jumbo v3, "com.samsung.android.email.provider"

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v11}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v13, v10}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo v2, "getAccountDetails for Persona : USER space   com.samsung.android.email.provider"

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v18, v14

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_1
    iget v13, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v18, v14

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v11}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v11, 0x0

    invoke-virtual {v2, v13, v11, v14}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-wide/from16 v18, v14

    sput-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, p1

    invoke-virtual/range {v38 .. v43}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_3

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_1
    move-object v13, v2

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move-object v13, v2

    move-object/from16 v9, v16

    goto/16 :goto_8

    :cond_3
    const-string/jumbo v3, "getAccount row count : Email cursor is invalid"

    invoke-static {v12, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    new-instance v3, Lcom/android/server/enterprise/email/AccountMetaData;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "displayName"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v8, "emailAddress"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    const-string/jumbo v8, "syncLookback"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "syncInterval"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "peakDays"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "peakStartMinute"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "peakEndMinute"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "peakSchedule"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "offPeakSchedule"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "roamingSchedule"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "hostAuthKeyRecv"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    const-string/jumbo v8, "hostAuthKeySend"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    const-string/jumbo v8, "flags"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "isDefault"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "compatibilityUuid"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v8, "senderName"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v8, "ringtoneUri"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v8, "protocolVersion"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v8, "signature"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string/jumbo v8, "calendarSyncLookback"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "emailsize"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    const-string/jumbo v8, "roamingemailsize"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    iget-wide v8, v3, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeyRecv:J

    sget-object v25, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v24, 0x1

    move-object/from16 v20, p0

    move-object/from16 v23, v3

    move-wide/from16 v21, v8

    :try_start_4
    invoke-static/range {v20 .. v25}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v8, v23

    :try_start_5
    iget-wide v9, v8, Lcom/android/server/enterprise/email/AccountMetaData;->mHostAuthKeySend:J

    sget-object v25, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const/16 v24, 0x0

    move-object/from16 v20, p0

    move-object/from16 v23, v8

    move-wide/from16 v21, v9

    :try_start_6
    invoke-static/range {v20 .. v25}, Lcom/android/server/enterprise/email/SettingsUtils;->loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z

    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v9, v23

    if-eqz v3, :cond_8

    if-nez v8, :cond_4

    goto/16 :goto_6

    :cond_4
    const/4 v11, 0x0

    :try_start_7
    iput-boolean v11, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    iget-object v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    const-string/jumbo v8, "eas"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x1

    iput-boolean v8, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mIsEAS:Z

    aget-object v3, v3, v8

    iput-object v3, v9, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_3
    move-object v13, v2

    goto/16 :goto_8

    :cond_5
    :goto_4
    const-string/jumbo v3, "type"

    const-string/jumbo v8, "account_id"

    filled-new-array {v6, v5, v3, v4, v8}, [Ljava/lang/String;

    move-result-object v12

    sget-object v3, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p2

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v13, :cond_a

    :try_start_8
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_6
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    const-string v3, "AllowHTMLEmail"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object/from16 v16, v13

    goto :goto_3

    :cond_7
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v0, :cond_6

    goto :goto_7

    :cond_8
    :goto_6
    :try_start_9
    const-string/jumbo v0, "getAccountIds : null "

    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v16

    :catch_4
    move-exception v0

    move-object/from16 v9, v23

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v9, v8

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v9, v3

    goto :goto_3

    :cond_9
    move-object/from16 v9, v16

    move-object v13, v9

    :cond_a
    :goto_7
    if-eqz v2, :cond_b

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v13, :cond_d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v13, v16

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v9, v16

    move-object v13, v9

    :goto_8
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v16, :cond_d

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_9
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v9

    :catchall_3
    move-exception v0

    :goto_a
    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v16, :cond_f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v16
.end method

.method public static declared-synchronized getAccountDetails(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 9

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "content://com.samsung.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v0, "content://com.samsung.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v0, "content://com.samsung.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide v5, p0

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized getAccountDetails$1(JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;
    .locals 9

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "SettingsUtils"

    const-string/jumbo v2, "getAccountDetails() :  with P"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "content://com.samsung.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v0, "content://com.samsung.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v0, "content://com.samsung.android.email.provider/policies"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-wide v5, p0

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccount(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;JLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/android/server/enterprise/email/AccountMetaData;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getAccountFromEnterpriseEmailAccount(Landroid/sec/enterprise/email/EnterpriseEmailAccount;)Lcom/samsung/android/knox/accounts/Account;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getAccountFromEnterpriseEmailAccount() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SettingsUtils"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    long-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    iget-boolean v4, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    iput-boolean v4, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iput-object v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iput-wide v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-boolean v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    iput-boolean v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    new-instance v5, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v5}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    iput-object v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iget v6, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    iput v6, v5, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iput v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    iput-object v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    iput-object v3, v5, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iput-object v4, v5, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iput-wide v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    iput-boolean v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    iput-boolean v1, v5, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-boolean p0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    iput-boolean p0, v5, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    return-object v0
.end method

.method public static getAccountFromEnterpriseExchangeAccount(Landroid/sec/enterprise/email/EnterpriseExchangeAccount;)Lcom/samsung/android/knox/accounts/Account;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getAccountFromEnterpriseExchangeAccount() : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SettingsUtils"

    invoke-static {v1, v0}, Landroid/util/secutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/knox/accounts/Account;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/Account;-><init>()V

    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mId:J

    long-to-int v1, v1

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->id:I

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->displayName:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->emailAddress:Ljava/lang/String;

    const-string v1, "0"

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncKey:Ljava/lang/String;

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncLookback:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncLookback:I

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncInterval:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/Account;->syncInterval:I

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeyRecv:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthKeySend:J

    const/4 v3, -0x1

    iput v3, v0, Lcom/samsung/android/knox/accounts/Account;->flags:I

    iget-boolean v4, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mIsDefault:Z

    iput-boolean v4, v0, Lcom/samsung/android/knox/accounts/Account;->isDefault:Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->compatibilityUuid:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSenderName:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->senderName:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->ringtoneUri:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mProtocolVersion:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->protocolVersion:Ljava/lang/String;

    iput-object v4, v0, Lcom/samsung/android/knox/accounts/Account;->securitySyncKey:Ljava/lang/String;

    iget-object v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSignature:Ljava/lang/String;

    iput-object v5, v0, Lcom/samsung/android/knox/accounts/Account;->signature:Ljava/lang/String;

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakDays:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakDays:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakStartMinute:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakStartMinute:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakEndMinute:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakEndMinute:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPeakSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->peakSyncSchedule:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mOffPeakSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->offPeakSyncSchedule:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mRoamingSyncSchedule:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->roamingSyncSchedule:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendarAge:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendarAge:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailBodyTruncationSize:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailBodyTruncationSize:I

    iget v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailRoamingBodyTruncationSize:I

    iput v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailRoamingBodyTruncationSize:I

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncContacts:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncContacts:Z

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncCalendar:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncCalendar:Z

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncTasks:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncTasks:Z

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mSyncNotes:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->syncNotes:Z

    iget-boolean v5, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEmailNotificationVibrateAlways:Z

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateAlways:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/knox/accounts/Account;->emailNotificationVibrateWhenSilent:Z

    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthRecv:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    const-string/jumbo v7, "eas"

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iput-object v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iput-wide v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-boolean v8, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean v8, v6, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    new-instance v6, Lcom/samsung/android/knox/accounts/HostAuth;

    invoke-direct {v6}, Lcom/samsung/android/knox/accounts/HostAuth;-><init>()V

    iput-object v6, v0, Lcom/samsung/android/knox/accounts/Account;->hostAuthSend:Lcom/samsung/android/knox/accounts/HostAuth;

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->id:I

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->protocol:Ljava/lang/String;

    iget-object v7, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mServerAddress:Ljava/lang/String;

    iput-object v7, v6, Lcom/samsung/android/knox/accounts/HostAuth;->address:Ljava/lang/String;

    iput v5, v6, Lcom/samsung/android/knox/accounts/HostAuth;->port:I

    iput v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->flags:I

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mEasUser:Ljava/lang/String;

    iput-object v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->login:Ljava/lang/String;

    iget-object v3, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mPassword:Ljava/lang/String;

    iput-object v3, v6, Lcom/samsung/android/knox/accounts/HostAuth;->password:Ljava/lang/String;

    iput-object v4, v6, Lcom/samsung/android/knox/accounts/HostAuth;->domain:Ljava/lang/String;

    iput-wide v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->accountKey:J

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseSSL:Z

    iput-boolean v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useSSL:Z

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mUseTLS:Z

    iput-boolean v1, v6, Lcom/samsung/android/knox/accounts/HostAuth;->useTLS:Z

    iget-boolean p0, p0, Landroid/sec/enterprise/email/EnterpriseExchangeAccount;->mAcceptAllCertificates:Z

    iput-boolean p0, v6, Lcom/samsung/android/knox/accounts/HostAuth;->acceptAllCertificates:Z

    return-object v0
.end method

.method public static declared-synchronized getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .locals 12

    const-string/jumbo v0, "getAccountId : USER space    UserHandle.myUserId() "

    const-class v1, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "content://com.samsung.android.email.provider/hostauth"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v2, "content://com.samsung.android.email.provider/account"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v2, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v11, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v3 .. v11}, Lcom/android/server/enterprise/email/SettingsUtils;->getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getAccountIdInternal(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)J
    .locals 19

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    const-string v2, " getAccountIdInternal : ACCOUNT "

    const-string/jumbo v3, "getAccountId for ACCOUNT row count : "

    const-string v4, " getAccountIdInternal : hostAuthId "

    const-string/jumbo v5, "getAccountId for HOST_AUTH row count : "

    const-string/jumbo v6, "getAccountIdInternal : USER space   "

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "SettingsUtils"

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    :cond_0
    const-wide/16 v17, -0x1

    goto/16 :goto_d

    :cond_1
    if-eqz p6, :cond_2

    if-eqz v7, :cond_2

    const-string/jumbo v14, "\\"

    invoke-static {v7, v14, v8}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    const-string/jumbo v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    filled-new-array {v10, v9, v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    if-eqz v9, :cond_4

    :try_start_0
    invoke-static {v9}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v17, -0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_3

    :try_start_1
    const-string/jumbo v1, "com.samsung.android.email.provider"

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v12, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo v0, "getAccountIdInternal : USER space   com.samsung.android.email.provider"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :cond_3
    iget v10, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Landroid/os/UserHandle;

    invoke-direct {v13, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v10, v12, v13}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-wide/16 v17, -0x1

    goto/16 :goto_c

    :cond_4
    const-wide/16 v17, -0x1

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "protocol=? AND address=? AND login=? "

    const/4 v9, 0x0

    move-object/from16 p3, p0

    move-object/from16 p2, v0

    move-object/from16 p5, v6

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p4, v14

    invoke-virtual/range {p2 .. p7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-long v8, v0

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    goto/16 :goto_b

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_1
    move-wide/from16 v8, v17

    goto :goto_3

    :cond_5
    move-wide/from16 v8, v17

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :catch_4
    move-exception v0

    move-object v6, v1

    goto :goto_1

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    :goto_4
    cmp-long v0, v17, v8

    if-eqz v0, :cond_a

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    :try_start_6
    sget-object v5, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v8, 0x0

    move-object/from16 p3, p1

    move-object/from16 p4, v0

    move-object/from16 p6, v4

    move-object/from16 p2, v5

    move-object/from16 p5, v6

    move-object/from16 p7, v8

    invoke-virtual/range {p2 .. p7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    move-wide/from16 v12, v17

    goto :goto_8

    :cond_7
    const-string/jumbo v0, "getAccountId for ACCOUNT row count : Email cursor is invalid"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    if-eqz v1, :cond_8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    int-to-long v12, v0

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_8

    :cond_8
    move-wide/from16 v12, v17

    :goto_6
    if-eqz v1, :cond_b

    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :goto_8
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v1, :cond_b

    goto :goto_7

    :goto_9
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :cond_a
    move-wide/from16 v12, v17

    :cond_b
    :goto_a
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v12

    :goto_b
    if-eqz v1, :cond_c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-wide v17

    :goto_d
    const-string/jumbo v0, "getAccountId : Error :: Invalid input parameters."

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17
.end method

.method public static getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string/jumbo v3, "\\"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v3, p0

    if-lez v3, :cond_2

    array-length v3, p0

    if-ne v0, v3, :cond_0

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    return-object v1

    :cond_0
    array-length v0, p0

    if-ne v4, v0, :cond_2

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    return-object v1

    :cond_1
    aput-object p0, v1, v4

    :cond_2
    return-object v1
.end method

.method public static getLDAPAccountFromEnterpriseLDAPAccount(Landroid/sec/enterprise/email/EnterpriseLDAPAccount;)Lcom/samsung/android/knox/accounts/LDAPAccount;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/accounts/LDAPAccount;

    invoke-direct {v0}, Lcom/samsung/android/knox/accounts/LDAPAccount;-><init>()V

    iget-wide v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    iput-wide v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->id:J

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->userName:Ljava/lang/String;

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->password:Ljava/lang/String;

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    iput v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->port:I

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->host:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isSSL:Z

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    iput-boolean v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->isAnonymous:Z

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->baseDN:Ljava/lang/String;

    iget p0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    iput p0, v0, Lcom/samsung/android/knox/accounts/LDAPAccount;->trustAll:I

    return-object v0
.end method

.method public static getPackageNameForUid(I)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/android/server/enterprise/email/SettingsUtils;->preCallingUid:I

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "getPackageNameForUid :   "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    const-string/jumbo v1, "SettingsUtils"

    invoke-static {p0, v0, v1}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->adminPkg:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string/jumbo p0, "com.samsung.android.email.provider"

    return-object p0
.end method

.method public static declared-synchronized getSMIMEAlias(Lcom/samsung/android/knox/ContextInfo;JLandroid/content/Context;Z)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string/jumbo v2, "getAccount row count : "

    const-string/jumbo v3, "_id = "

    const-string/jumbo v4, "getSMIMEAlias : USER space   "

    const-class v5, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v5

    :try_start_0
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    iget v7, v0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    const-string/jumbo v9, "_id"

    if-eqz p4, :cond_0

    const-string/jumbo v10, "smimeOwnSignCertAlias"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_0
    const-string/jumbo v10, "smimeOwnCertificateAlias"

    :goto_0
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    if-eqz v6, :cond_2

    :try_start_1
    invoke-static {v6}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    const-string/jumbo v0, "com.samsung.android.email.provider"

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v11, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo v0, "SettingsUtils"

    const-string/jumbo v1, "getSMIMEAlias : USER space   com.samsung.android.email.provider"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v1, v9

    goto/16 :goto_4

    :cond_1
    iget v10, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v10, v11, v12}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo v1, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sput-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo v0, "SettingsUtils"

    const-string/jumbo v1, "getSMIMEAlias : get Context with no MUM Enviroment."

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v0, "content://com.samsung.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v3, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_4

    :try_start_2
    const-string/jumbo v0, "SettingsUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p4, :cond_3

    const-string/jumbo v0, "smimeOwnSignCertAlias"

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v9, v1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    const-string/jumbo v0, "smimeOwnCertificateAlias"

    :goto_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    :try_start_3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v1, :cond_5

    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :goto_4
    :try_start_4
    const-string/jumbo v2, "SettingsUtils"

    const-string/jumbo v3, "getSMIMEAlias() : failed. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_5
    monitor-exit v5

    return-object v9

    :goto_6
    :try_start_6
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :goto_7
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0
.end method

.method public static getSecurityPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const-string/jumbo p0, "SettingsUtils"

    const-string/jumbo v0, "getSecurityPassword() failed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static isPackageInstalled(ILjava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-interface {v0, p1, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string/jumbo p1, "SettingsUtils"

    const-string v0, "Exception in isPackageInstalled()"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_1
    return v3
.end method

.method public static isPersona(I)Z
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 7

    invoke-static {p0}, Lcom/android/server/enterprise/email/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_0

    if-ne v3, v2, :cond_0

    if-ge v4, v6, :cond_0

    if-gt v6, p0, :cond_0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p0, v1, :cond_0

    return v2

    :cond_0
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method public static loadHostAuth(Landroid/net/Uri;JLcom/android/server/enterprise/email/AccountMetaData;ZLandroid/content/Context;)Z
    .locals 17

    move-object/from16 v0, p3

    const-string/jumbo v1, "loadHostAuth row count : "

    const-string/jumbo v2, "_id = "

    const-string/jumbo v7, "flags"

    const-string/jumbo v8, "login"

    const-string/jumbo v3, "_id"

    const-string/jumbo v4, "protocol"

    const-string/jumbo v5, "address"

    const-string/jumbo v6, "port"

    const-string/jumbo v9, "password"

    const-string/jumbo v10, "domain"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v6, p1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v2, "SettingsUtils"

    if-eqz v4, :cond_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v1, "domain"

    const-string/jumbo v2, "password"

    const-string/jumbo v5, "login"

    const-string/jumbo v6, "flags"

    const-string/jumbo v7, "port"

    const-string/jumbo v8, "address"

    const-string/jumbo v9, "protocol"

    if-eqz p4, :cond_0

    :try_start_2
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/enterprise/email/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "loadHostAuth row count : Email cursor is invalid"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    return v3

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    return v3

    :goto_3
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static declared-synchronized sendAccountsChangedBroadcast(Landroid/content/Context;I)V
    .locals 4

    const-class v0, Lcom/android/server/enterprise/email/SettingsUtils;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-static {v1}, Lcom/android/server/enterprise/email/SettingsUtils;->isPersona(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo p1, "com.samsung.android.email.provider"

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo p0, "SettingsUtils"

    const-string/jumbo p1, "sendAccountsChangedBroadcast : USER space   com.samsung.android.email.provider"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/email/SettingsUtils;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    const-string/jumbo p0, "SettingsUtils"

    const-string/jumbo p1, "sendAccountsChangedBroadcast : USER space"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "content://com.samsung.android.email.provider/hostauth"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    sget-object p0, Lcom/android/server/enterprise/email/SettingsUtils;->emails:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "content://com.samsung.android.email.provider/account"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-void

    :goto_2
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    const-string/jumbo p0, "SettingsUtils"

    const-string/jumbo p1, "sendAccountsChangedBroadcast()"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-void

    :goto_4
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method

.method public static setSecurityPassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "SettingsUtils"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/email/SettingsUtils;->mServerPassword:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo p0, "setSecurityPassword() success"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string/jumbo p0, "setSecurityPassword() failed"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "setSecurityPassword() failed : invalid parameter"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
