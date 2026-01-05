.class public final Lcom/android/server/enterprise/apn/ApnSettingsPolicy;
.super Lcom/samsung/android/knox/net/apn/IApnSettingsPolicy$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mMDMConfigVersion:I

.field public mPendingGetApnList:Ljava/util/HashMap;


# direct methods
.method public static getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, "ril.ICC_TYPE0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ril.ICC_TYPE1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "0"

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v4

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p1, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string/jumbo p0, "getTelephonyProperty : "

    const-string p1, "ApnSettingsPolicyService"

    invoke-static {p0, v1, p1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setColumnValue: key="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApnSettingsPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final declared-synchronized addUpdateApn(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/net/apn/ApnSettings;)J
    .locals 34

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    const-string/jumbo v8, "addUpdateAp() : invalid ap Id "

    const-string/jumbo v9, "isNewAp - "

    monitor-enter p0

    :try_start_0
    const-string v10, "ApnSettingsPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v9, -0x1

    if-nez v2, :cond_0

    monitor-exit p0

    return-wide v9

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getId()J

    move-result-wide v11

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getUser()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getServer()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPassword()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getProxy()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getPort()I

    move-result v4

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsProxy()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsc()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getType()Ljava/lang/String;

    move-result-object v20

    move-wide/from16 v21, v9

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getAuthType()I

    move-result v9

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getApn()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_2

    :goto_1
    move-object/from16 v7, v23

    const/16 v24, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    :goto_2
    if-eqz v10, :cond_3a

    if-nez v7, :cond_3

    goto/16 :goto_32

    :cond_3
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v3, 0x41

    if-le v6, v3, :cond_4

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "APN name maximum length (65)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v21

    :catchall_0
    move-exception v0

    goto/16 :goto_33

    :cond_4
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x78

    if-le v3, v6, :cond_5

    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "APN excedes maximum length (120)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide v21

    :cond_5
    :try_start_3
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMcc()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMnc()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    :goto_4
    invoke-virtual {v2}, Lcom/samsung/android/knox/net/apn/ApnSettings;->getMmsPort()Ljava/lang/String;

    move-result-object v26

    if-nez v26, :cond_8

    :goto_5
    move-object/from16 p1, v26

    goto :goto_6

    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    goto :goto_5

    :goto_6
    iget-object v5, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_9

    move-object/from16 v27, v13

    goto :goto_a

    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v27

    sparse-switch v27, :sswitch_data_0

    move-object/from16 v27, v13

    :goto_7
    const/4 v13, -0x1

    goto :goto_9

    :sswitch_0
    move-object/from16 v27, v13

    const-string v13, "IPV6"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    goto :goto_8

    :cond_a
    const/4 v13, 0x2

    goto :goto_9

    :sswitch_1
    move-object/from16 v27, v13

    const-string v13, "IP"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_8

    :cond_b
    move/from16 v13, v24

    goto :goto_9

    :sswitch_2
    move-object/from16 v27, v13

    const-string v13, "IPV4V6"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_c

    :goto_8
    goto :goto_7

    :cond_c
    const/4 v13, 0x0

    :goto_9
    packed-switch v13, :pswitch_data_0

    :goto_a
    const/4 v13, 0x0

    goto :goto_b

    :pswitch_0
    move/from16 v13, v24

    :goto_b
    if-nez v13, :cond_d

    :try_start_4
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid protocol!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-wide v21

    :cond_d
    :try_start_5
    iget-object v13, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_e

    move-object/from16 v28, v14

    goto :goto_f

    :cond_e
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v28

    sparse-switch v28, :sswitch_data_1

    move-object/from16 v28, v14

    :goto_c
    const/4 v14, -0x1

    goto :goto_e

    :sswitch_3
    move-object/from16 v28, v14

    const-string v14, "IPV6"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    goto :goto_d

    :cond_f
    const/4 v14, 0x2

    goto :goto_e

    :sswitch_4
    move-object/from16 v28, v14

    const-string v14, "IP"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    goto :goto_d

    :cond_10
    move/from16 v14, v24

    goto :goto_e

    :sswitch_5
    move-object/from16 v28, v14

    const-string v14, "IPV4V6"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    :goto_d
    goto :goto_c

    :cond_11
    const/4 v14, 0x0

    :goto_e
    packed-switch v14, :pswitch_data_1

    :goto_f
    const/4 v14, 0x0

    goto :goto_10

    :pswitch_1
    move/from16 v14, v24

    :goto_10
    if-nez v14, :cond_12

    :try_start_6
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid Roaming Protocol!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-wide v21

    :cond_12
    :try_start_7
    iget-object v14, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v14, :cond_39

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v29

    sparse-switch v29, :sswitch_data_2

    move-object/from16 v29, v15

    :goto_11
    const/16 v17, -0x1

    goto :goto_13

    :sswitch_6
    move-object/from16 v29, v15

    const-string/jumbo v15, "imsi"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_13

    goto :goto_12

    :cond_13
    const/16 v17, 0x3

    goto :goto_13

    :sswitch_7
    move-object/from16 v29, v15

    const-string/jumbo v15, "spn"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_14

    goto :goto_12

    :cond_14
    const/16 v17, 0x2

    goto :goto_13

    :sswitch_8
    move-object/from16 v29, v15

    const-string/jumbo v15, "gid"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_15

    goto :goto_12

    :cond_15
    move/from16 v17, v24

    goto :goto_13

    :sswitch_9
    move-object/from16 v29, v15

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    :goto_12
    goto :goto_11

    :cond_16
    const/16 v17, 0x0

    :goto_13
    packed-switch v17, :pswitch_data_2

    goto/16 :goto_31

    :pswitch_2
    :try_start_8
    iget-object v2, v2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    if-nez v2, :cond_17

    goto :goto_14

    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_14
    :try_start_9
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_18

    const-string v15, "*"

    move-object/from16 v17, v8

    move-object/from16 v8, p1

    invoke-virtual {v8, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-eqz v15, :cond_19

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto :goto_15

    :catch_0
    move-exception v0

    goto/16 :goto_2e

    :cond_18
    move-object/from16 v17, v8

    move-object/from16 v8, p1

    :cond_19
    const/4 v15, -0x1

    :goto_15
    const-wide/16 v30, 0x1

    move-wide/from16 v32, v11

    const/4 v11, -0x2

    if-nez v0, :cond_1b

    cmp-long v12, v30, v32

    if-gtz v12, :cond_1a

    goto :goto_17

    :cond_1a
    :goto_16
    move/from16 v27, v4

    move-wide/from16 v4, v32

    goto/16 :goto_2a

    :cond_1b
    :goto_17
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1a

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1a

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v12, :cond_1a

    const/4 v12, -0x1

    if-gt v12, v4, :cond_1a

    if-gt v12, v15, :cond_1a

    if-gt v11, v9, :cond_1a

    const/4 v12, 0x3

    if-ge v12, v9, :cond_1c

    goto :goto_16

    :cond_1c
    :try_start_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    iget-object v12, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v15, "phone"

    invoke-virtual {v12, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x4

    if-eqz v12, :cond_1d

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v15, v11, :cond_1d

    const/4 v11, 0x0

    const/4 v15, 0x3

    invoke-virtual {v12, v11, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_18

    :catchall_1
    move-exception v0

    goto/16 :goto_29

    :catch_1
    move-exception v0

    goto/16 :goto_28

    :cond_1d
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_18
    if-nez v27, :cond_1e

    move-object/from16 v15, v27

    goto :goto_19

    :cond_1e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    :goto_19
    if-nez v28, :cond_1f

    move/from16 v27, v4

    move-object/from16 v4, v28

    goto :goto_1a

    :cond_1f
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move/from16 v27, v4

    move-object/from16 v4, v23

    :goto_1a
    if-nez v29, :cond_20

    move-object/from16 v25, v2

    move-object/from16 v2, v29

    goto :goto_1b

    :cond_20
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v25, v2

    move-object/from16 v2, v23

    :goto_1b
    if-nez v16, :cond_21

    :goto_1c
    move-object/from16 v23, v14

    move-object/from16 v14, v16

    goto :goto_1d

    :cond_21
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    goto :goto_1c

    :goto_1d
    if-nez v18, :cond_22

    :goto_1e
    move-object/from16 v16, v13

    move-object/from16 v13, v18

    goto :goto_1f

    :cond_22
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    goto :goto_1e

    :goto_1f
    if-nez v19, :cond_23

    :goto_20
    move-object/from16 v18, v5

    move-object/from16 v5, v19

    goto :goto_21

    :cond_23
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    goto :goto_20

    :goto_21
    if-nez v20, :cond_24

    :goto_22
    move-object/from16 v19, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v12

    goto :goto_23

    :cond_24
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    goto :goto_22

    :goto_23
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v28, v11

    const-string/jumbo v11, "name"

    invoke-static {v0, v12, v11, v10}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "numeric"

    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v12, v10, v11}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "mcc"

    invoke-static {v0, v12, v10, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "mnc"

    invoke-static {v0, v12, v10, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "apn"

    invoke-static {v0, v12, v10, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "user"

    invoke-static {v0, v12, v7, v15}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "server"

    invoke-static {v0, v12, v7, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "password"

    invoke-static {v0, v12, v4, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "proxy"

    invoke-static {v0, v12, v2, v14}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "port"

    if-ltz v27, :cond_25

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_25
    const-string v4, ""

    :goto_24
    invoke-static {v0, v12, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mmsproxy"

    invoke-static {v0, v12, v2, v13}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mmsport"

    invoke-static {v0, v12, v2, v8}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mmsc"

    invoke-static {v0, v12, v2, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_27

    const-string/jumbo v2, "authtype"

    const/4 v4, -0x2

    if-ge v4, v9, :cond_26

    const/4 v4, 0x4

    if-le v4, v9, :cond_26

    move v5, v9

    goto :goto_25

    :cond_26
    const/4 v5, -0x1

    :goto_25
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_26

    :cond_27
    if-nez v0, :cond_28

    const/4 v4, -0x2

    if-ge v4, v9, :cond_28

    const/4 v4, 0x4

    if-le v4, v9, :cond_28

    const-string/jumbo v2, "authtype"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_28
    :goto_26
    const-string/jumbo v2, "type"

    move-object/from16 v4, v28

    invoke-static {v0, v12, v2, v4}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v20, :cond_29

    if-eqz v19, :cond_29

    move-object/from16 v2, v20

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    move-object/from16 v11, v19

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string/jumbo v2, "current"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "simSlotCnt : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApnSettingsPolicyService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v24

    if-le v2, v3, :cond_29

    const-string v2, "ApnSettingsPolicyService"

    const-string v4, "IS DUAL SIM"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "current1"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_29
    const-string/jumbo v2, "edited"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2a

    const-string/jumbo v2, "protocol"

    move-object/from16 v3, v18

    invoke-static {v0, v12, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v3, v16

    invoke-static {v0, v12, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    const-string/jumbo v2, "mvno_type"

    move-object/from16 v3, v23

    invoke-static {v0, v12, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "mvno_match_data"

    move-object/from16 v3, v25

    invoke-static {v0, v12, v2, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->setColumnValue(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-lez v2, :cond_2c

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v3, "addUpdateAp Created rowUri : "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    goto :goto_27

    :cond_2b
    sget-object v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v4, v32

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v12, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2d

    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v3, "addUpdateAp Updated rowUri : "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    goto :goto_27

    :cond_2c
    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "addUpdateAp Error: Empty dataset."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_2d
    move-wide/from16 v9, v21

    :goto_27
    :try_start_c
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_30

    :goto_28
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2f

    :goto_29
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :goto_2a
    if-nez v0, :cond_2e

    cmp-long v0, v30, v4

    if-lez v0, :cond_2e

    :try_start_f
    const-string v0, "ApnSettingsPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v8, v17

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "addUpdateAp() : invalid ap name"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "addUpdateAp() : invalid ap apn"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_32

    :cond_31
    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "addUpdateAp() : invalid ap mcc"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    if-eqz v6, :cond_34

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_33

    goto :goto_2c

    :cond_33
    :goto_2b
    move/from16 v0, v27

    const/4 v12, -0x1

    goto :goto_2d

    :cond_34
    :goto_2c
    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "addUpdateAp() : invalid ap mnc"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :goto_2d
    if-le v12, v0, :cond_35

    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "addUpdateAp() : invalid ap port"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, -0x1

    :cond_35
    if-le v12, v15, :cond_36

    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "addUpdateAp() : invalid ap iMmsPort"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const/4 v4, -0x2

    if-gt v4, v9, :cond_37

    const/4 v12, 0x3

    if-ge v12, v9, :cond_38

    :cond_37
    const-string v0, "ApnSettingsPolicyService"

    const-string/jumbo v2, "addUpdateAp() : invalid ap authType"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_2f

    :goto_2e
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :cond_38
    :goto_2f
    move-wide/from16 v9, v21

    :goto_30
    monitor-exit p0

    return-wide v9

    :cond_39
    :goto_31
    :try_start_11
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid mvno type!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit p0

    return-wide v21

    :cond_3a
    :goto_32
    :try_start_12
    const-string v0, "ApnSettingsPolicyService"

    const-string v2, "Invalid value"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    monitor-exit p0

    return-wide v21

    :goto_33
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7edefc9b -> :sswitch_2
        0x927 -> :sswitch_1
        0x226607 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7edefc9b -> :sswitch_5
        0x927 -> :sswitch_4
        0x226607 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_9
        0x18fc2 -> :sswitch_8
        0x1bdb1 -> :sswitch_7
        0x31627a -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized deleteApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 5

    const-string/jumbo v0, "deleteAp : deleted rowCount from ApTable : "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    cmp-long p1, v3, p2

    const/4 v3, 0x0

    if-lez p1, :cond_0

    const-string p1, "ApnSettingsPolicyService"

    const-string/jumbo p2, "deleteAp : apId is invalid"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    const/4 p1, -0x1

    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const/4 v4, 0x0

    invoke-virtual {p3, p2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    const-string p2, "ApnSettingsPolicyService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :goto_1
    if-lez p1, :cond_1

    const/4 v3, 0x1

    :cond_1
    monitor-exit p0

    return v3

    :goto_2
    :try_start_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_APN"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public final getApnList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;
    .locals 31

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_0
    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v3, "retrieveApnListFromDatabase"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "_id"

    const-string/jumbo v7, "name"

    const-string/jumbo v8, "mcc"

    const-string/jumbo v9, "mnc"

    const-string/jumbo v10, "apn"

    const-string/jumbo v11, "user"

    const-string/jumbo v12, "server"

    const-string/jumbo v13, "password"

    const-string/jumbo v14, "proxy"

    const-string/jumbo v15, "port"

    const-string/jumbo v16, "mmsproxy"

    const-string/jumbo v17, "mmsport"

    const-string/jumbo v18, "mmsc"

    const-string/jumbo v19, "authtype"

    const-string/jumbo v20, "type"

    const-string/jumbo v21, "protocol"

    const-string/jumbo v22, "roaming_protocol"

    const-string/jumbo v23, "mvno_type"

    const-string/jumbo v24, "mvno_match_data"

    filled-new-array/range {v6 .. v24}, [Ljava/lang/String;

    move-result-object v27

    invoke-virtual {v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getFirstSlotIndex()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnListUri(I)Landroid/net/Uri;

    move-result-object v26

    iget-object v6, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    invoke-virtual {v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getWhereClause()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_1
    new-instance v6, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {v6}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string/jumbo v7, "_id"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo v7, "name"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo v7, "mcc"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo v7, "mnc"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string/jumbo v7, "apn"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo v7, "user"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo v7, "server"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo v7, "password"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v7, "proxy"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo v7, "port"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    :goto_0
    const-string/jumbo v7, "mmsproxy"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsport"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo v7, "mmsc"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string/jumbo v7, "authtype"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_3
    const-string/jumbo v7, "type"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    iget v7, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 v8, 0x11

    if-lt v7, v8, :cond_4

    const-string/jumbo v7, "protocol"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo v7, "roaming_protocol"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_4
    const-string/jumbo v7, "mvno_type"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    :cond_5
    const-string/jumbo v7, "mvno_match_data"

    invoke-static {v7, v5}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    iput-object v7, v6, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;

    :cond_6
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_1

    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget v3, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    const/4 v4, 0x0

    if-lt v2, v3, :cond_9

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/samsung/android/knox/net/apn/ApnSettingsPolicy;->MAXIMUM_APNS_OVER_IPC:I

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mPendingGetApnList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0

    :goto_2
    if-eqz v5, :cond_a

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public final getApnListUri(I)Landroid/net/Uri;
    .locals 3

    const-string/jumbo v0, "getApnListUri"

    const-string v1, "ApnSettingsPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    const/4 v1, 0x0

    aget p1, p1, v1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    :cond_2
    sget-object p0, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string/jumbo p0, "No SIM "

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public final getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 10

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    const-wide/16 v0, 0x1

    cmp-long p1, v0, p2

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const-string p0, "ApnSettingsPolicyService"

    const-string/jumbo p1, "getApnSettings : apId is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    sget-object p1, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_6

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_6

    new-instance p2, Lcom/samsung/android/knox/net/apn/ApnSettings;

    invoke-direct {p2}, Lcom/samsung/android/knox/net/apn/ApnSettings;-><init>()V

    const-string/jumbo p3, "_id"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setId(J)V

    const-string/jumbo p3, "name"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setName(Ljava/lang/String;)V

    const-string/jumbo p3, "mcc"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMcc(Ljava/lang/String;)V

    const-string/jumbo p3, "mnc"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMnc(Ljava/lang/String;)V

    const-string/jumbo p3, "apn"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setApn(Ljava/lang/String;)V

    const-string/jumbo p3, "user"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setUser(Ljava/lang/String;)V

    const-string/jumbo p3, "server"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setServer(Ljava/lang/String;)V

    const-string/jumbo p3, "password"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPassword(Ljava/lang/String;)V

    const-string/jumbo p3, "proxy"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setProxy(Ljava/lang/String;)V

    const-string/jumbo p3, "port"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setPort(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v1, p1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string/jumbo p3, "mmsproxy"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsProxy(Ljava/lang/String;)V

    const-string/jumbo p3, "mmsport"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsPort(Ljava/lang/String;)V

    const-string/jumbo p3, "mmsc"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setMmsc(Ljava/lang/String;)V

    const-string/jumbo p3, "authtype"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setAuthType(I)V

    :cond_2
    const-string/jumbo p3, "type"

    invoke-static {p3, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/knox/net/apn/ApnSettings;->setType(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mMDMConfigVersion:I

    const/16 p3, 0x11

    if-lt p0, p3, :cond_3

    const-string/jumbo p0, "protocol"

    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->protocol:Ljava/lang/String;

    const-string/jumbo p0, "roaming_protocol"

    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->roamingProtocol:Ljava/lang/String;

    :cond_3
    const-string/jumbo p0, "mvno_type"

    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_type:Ljava/lang/String;

    :cond_4
    const-string/jumbo p0, "mvno_match_data"

    invoke-static {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getColumnValue(Ljava/lang/String;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    iput-object p0, p2, Lcom/samsung/android/knox/net/apn/ApnSettings;->mvno_value:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object p0, v0

    move-object p1, v1

    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v1

    :goto_2
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getFirstSlotIndex()I
    .locals 6

    const-string/jumbo v0, "ril.ICC_TYPE0"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ril.ICC_TYPE1"

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "phone1_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v5, "phone2_on"

    invoke-static {p0, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    const-string v5, "0"

    if-eqz v4, :cond_2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    :goto_2
    const-string/jumbo p0, "getFirstSlotIndex : "

    const-string v0, "ApnSettingsPolicyService"

    invoke-static {v1, p0, v0}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final declared-synchronized getPreferredApn(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/net/apn/ApnSettings;
    .locals 12

    const-string/jumbo v1, "getPreferredApn Ex: "

    const-string/jumbo v0, "getPreferredApn():"

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    const-string v2, "ApnSettingsPolicyService"

    const-string/jumbo v3, "getPreferredApn():"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const-string/jumbo v5, "_id"

    const-string/jumbo v8, "name"

    const-string/jumbo v9, "apn"

    filled-new-array {v5, v8, v9}, [Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v11, "name ASC"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "ApnSettingsPolicyService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getApnSettings(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/net/apn/ApnSettings;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, v5

    goto :goto_4

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_5

    :cond_1
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object p1, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object v5, v4

    :goto_2
    :try_start_4
    const-string v0, "ApnSettingsPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_1

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :goto_3
    monitor-exit p0

    return-object v4

    :goto_4
    if-eqz v4, :cond_2

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_5
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public final getWhereClause()Ljava/lang/String;
    .locals 9

    const-string/jumbo v0, "getWhereClause"

    const-string v1, "ApnSettingsPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v2

    const-string/jumbo v3, "ril.ICC_TYPE0"

    const/4 v4, 0x0

    invoke-static {v4, v3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone1_on"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "0"

    if-ne v5, v7, :cond_0

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const-string/jumbo v8, "simSlotCnt : "

    invoke-static {v5, v8, v1}, Lcom/android/server/RCPManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-le v5, v7, :cond_3

    const-string/jumbo v1, "ril.ICC_TYPE1"

    invoke-static {v7, v1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->getTelephonyProperty(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v5, "phone2_on"

    invoke-static {p0, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v7, :cond_1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    move v4, v7

    :cond_1
    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    const-string p0, " AND current = 1 "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_4

    if-ne v2, v7, :cond_4

    const-string p0, " AND current1 = 1 "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    const-string p0, " AND current = 1"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isValidApnId(J)Z
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string/jumbo v3, "isValidApnId() row count : "

    const-string/jumbo v4, "isValidApnId: CTC card! numeric = "

    const-string/jumbo v5, "isValidApnId: simOp = "

    const-wide/16 v6, 0x0

    cmp-long v6, v6, v1

    const-string v7, "ApnSettingsPolicyService"

    const/4 v8, 0x0

    if-gez v6, :cond_7

    const-string/jumbo v6, "numeric"

    const-string/jumbo v9, "type"

    const-string/jumbo v10, "_id"

    filled-new-array {v10, v6, v9}, [Ljava/lang/String;

    move-result-object v13

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v9

    iget-object v10, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    invoke-virtual {v10, v9}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    const-string/jumbo v11, "ril.simoperator"

    const-string v12, "ETC"

    invoke-static {v9, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", numeric = "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "CTC"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "gsm.sim.cdmaoperator.numeric"

    const-string v10, ""

    invoke-static {v9, v5, v10}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "46003"

    move-object v10, v9

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    move-object v10, v5

    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cdmaOperator = "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    iget-object v0, v0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for apId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v0

    goto :goto_1

    :cond_2
    move v1, v8

    :goto_1
    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dun"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "mms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_2

    :catch_1
    move-exception v0

    move v8, v1

    goto :goto_4

    :cond_3
    move v8, v1

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    :goto_5
    return v8

    :goto_6
    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isValidApnId() : invalid apId : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method public final onAdminAdded(I)V
    .locals 0

    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized setPreferredApn(Lcom/samsung/android/knox/ContextInfo;J)Z
    .locals 6

    const-string/jumbo v0, "setPreferedAp() row count : "

    const-string/jumbo v1, "setPreferedAp() : invalid ap Id "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->enforceOwnerOnlyAndApnPermission(Lcom/samsung/android/knox/ContextInfo;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v4, 0x0

    cmp-long p1, v4, p2

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    if-lez p1, :cond_0

    :try_start_1
    const-string p1, "ApnSettingsPolicyService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->isValidApnId(J)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "apn_id"

    if-nez p1, :cond_1

    const-wide/16 p2, -0x1

    :cond_1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p1, p0, Lcom/android/server/enterprise/apn/ApnSettingsPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/android/server/enterprise/apn/ApnSettingsPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_2

    const/4 v4, 0x1

    :cond_2
    const-string p2, "ApnSettingsPolicyService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_2
    monitor-exit p0

    return v4

    :goto_3
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final systemReady()V
    .locals 0

    return-void
.end method
