.class public abstract Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public static deserializeInternal(Ljava/io/InputStream;)Landroid/security/keystore/recovery/KeyChainSnapshot;
    .locals 33

    const-string/jumbo v0, "alias"

    const-string/jumbo v1, "keyMaterial"

    const-string/jumbo v2, "keyMetadata"

    const-string/jumbo v3, "algorithm"

    const-string/jumbo v4, "salt"

    const-string/jumbo v5, "memoryDifficulty"

    const-string/jumbo v6, "keyDerivationParams"

    const-string/jumbo v7, "userSecretType"

    const-string/jumbo v8, "lockScreenUiType"

    const-string/jumbo v9, "serverParams"

    const-string/jumbo v10, "keyChainProtectionParamsList"

    const-string/jumbo v11, "counterId"

    const-string/jumbo v12, "applicationKeysList"

    const-string/jumbo v13, "snapshotVersion"

    const-string/jumbo v14, "thmCertPath"

    const-string/jumbo v15, "recoveryKeyMaterial"

    move-object/from16 v16, v2

    const-string/jumbo v2, "maxAttempts"

    move-object/from16 v17, v1

    const/16 v18, 0x0

    const/16 v19, -0x1

    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    move-object/from16 v21, v0

    const/4 v0, 0x2

    move-object/from16 v22, v5

    const/4 v5, 0x0

    move-object/from16 v23, v4

    const-string/jumbo v4, "keyChainSnapshot"

    invoke-interface {v1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    invoke-direct {v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;-><init>()V

    :goto_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    move-object/from16 v24, v4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_20

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    :goto_1
    move-object/from16 v4, v24

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "Unexpected tag "

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v25

    sparse-switch v25, :sswitch_data_0

    :goto_2
    move-object/from16 v25, v15

    :goto_3
    move/from16 v15, v19

    goto/16 :goto_6

    :sswitch_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    goto :goto_2

    :cond_1
    const/16 v25, 0x8

    goto :goto_4

    :sswitch_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_2

    goto :goto_2

    :cond_2
    const/16 v25, 0x7

    goto :goto_4

    :sswitch_2
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_3

    goto :goto_2

    :cond_3
    const/16 v25, 0x6

    goto :goto_4

    :sswitch_3
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    goto :goto_2

    :cond_4
    const/16 v25, 0x5

    goto :goto_4

    :sswitch_4
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    goto :goto_2

    :cond_5
    const/16 v25, 0x4

    :goto_4
    move/from16 v32, v25

    move-object/from16 v25, v15

    move/from16 v15, v32

    goto :goto_6

    :sswitch_5
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    goto :goto_2

    :cond_6
    move-object/from16 v25, v15

    const/4 v15, 0x3

    goto :goto_6

    :sswitch_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v25, v15

    const/4 v15, 0x2

    goto :goto_6

    :sswitch_7
    move-object/from16 v25, v15

    const-string/jumbo v15, "backendPublicKey"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    goto :goto_5

    :cond_8
    const/4 v15, 0x1

    goto :goto_6

    :sswitch_8
    move-object/from16 v25, v15

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    :goto_5
    goto :goto_3

    :cond_9
    move/from16 v15, v18

    :goto_6
    packed-switch v15, :pswitch_data_0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, " in keyChainSnapshot"

    invoke-static {v4, v0, v2}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {v1, v9}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setServerParams([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-object v0, v8

    move-object v8, v2

    move-object v2, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v0

    move-object/from16 v20, v3

    move-object/from16 v26, v9

    move-object v0, v12

    move-object v3, v14

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v4, v25

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    :goto_7
    move-object/from16 v17, v7

    move-object/from16 v7, v16

    goto/16 :goto_20

    :pswitch_1
    const/4 v0, 0x2

    const/4 v15, 0x0

    invoke-interface {v1, v0, v15, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    move-object/from16 v26, v9

    const/4 v9, 0x3

    if-eq v0, v9, :cond_18

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v9, 0x2

    if-eq v0, v9, :cond_a

    move-object/from16 v9, v26

    goto :goto_8

    :cond_a
    const-string/jumbo v0, "keyChainProtectionParams"

    move-object/from16 v27, v2

    const/4 v2, 0x0

    invoke-interface {v1, v9, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    invoke-direct {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;-><init>()V

    :goto_9
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    move-object/from16 v28, v14

    const/4 v14, 0x3

    if-eq v9, v14, :cond_17

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v9

    const/4 v14, 0x2

    if-eq v9, v14, :cond_b

    move-object/from16 v14, v28

    goto :goto_9

    :cond_b
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_1

    :goto_a
    move/from16 v14, v19

    goto :goto_b

    :sswitch_9
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_c

    goto :goto_a

    :cond_c
    const/4 v14, 0x2

    goto :goto_b

    :sswitch_a
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    goto :goto_a

    :cond_d
    const/4 v14, 0x1

    goto :goto_b

    :sswitch_b
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_e

    goto :goto_a

    :cond_e
    move/from16 v14, v18

    :goto_b
    packed-switch v14, :pswitch_data_1

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " in keyChainProtectionParams"

    invoke-static {v4, v9, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const/4 v9, 0x2

    const/4 v14, 0x0

    invoke-interface {v1, v9, v14, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    move/from16 v29, v19

    move/from16 v30, v29

    const/4 v14, 0x0

    :goto_c
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    move-object/from16 v31, v13

    const/4 v13, 0x3

    if-eq v9, v13, :cond_13

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v9

    const/4 v13, 0x2

    if-eq v9, v13, :cond_f

    :goto_d
    move-object/from16 v13, v31

    goto :goto_c

    :cond_f
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2

    :goto_e
    move-object/from16 v13, v23

    :goto_f
    move-object/from16 v23, v12

    move-object/from16 v12, v22

    :goto_10
    move/from16 v22, v19

    goto :goto_11

    :sswitch_c
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_e

    :cond_10
    move-object/from16 v13, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    const/16 v22, 0x2

    goto :goto_11

    :sswitch_d
    move-object/from16 v13, v23

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_11

    goto :goto_f

    :cond_11
    move-object/from16 v23, v12

    move-object/from16 v12, v22

    const/16 v22, 0x1

    goto :goto_11

    :sswitch_e
    move-object/from16 v13, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_12

    goto :goto_10

    :cond_12
    move/from16 v22, v18

    :goto_11
    packed-switch v22, :pswitch_data_2

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " in keyDerivationParams"

    invoke-static {v4, v9, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    invoke-static {v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v9

    move/from16 v29, v9

    goto :goto_12

    :pswitch_4
    invoke-static {v1, v13}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v9

    move-object v14, v9

    goto :goto_12

    :pswitch_5
    invoke-static {v1, v12}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v9

    move/from16 v30, v9

    :goto_12
    move-object/from16 v22, v12

    move-object/from16 v12, v23

    move-object/from16 v23, v13

    goto :goto_d

    :cond_13
    move-object/from16 v13, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    if-eqz v14, :cond_16

    move-object/from16 v20, v3

    move/from16 v3, v29

    const/4 v9, 0x1

    if-eq v3, v9, :cond_15

    const/4 v9, 0x2

    if-ne v3, v9, :cond_14

    move/from16 v3, v30

    invoke-static {v14, v3}, Landroid/security/keystore/recovery/KeyDerivationParams;->createScryptParams([BI)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v3

    :goto_13
    const/4 v9, 0x3

    const/4 v14, 0x0

    goto :goto_14

    :cond_14
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string/jumbo v1, "Unknown algorithm in keyDerivationParams"

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    invoke-static {v14}, Landroid/security/keystore/recovery/KeyDerivationParams;->createSha256Params([B)Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v3

    goto :goto_13

    :goto_14
    invoke-interface {v1, v9, v14, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setKeyDerivationParams(Landroid/security/keystore/recovery/KeyDerivationParams;)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_15

    :cond_16
    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string/jumbo v1, "salt was not set in keyDerivationParams"

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    move-object/from16 v20, v3

    move-object/from16 v31, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    invoke-static {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setUserSecretType(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    goto :goto_15

    :pswitch_7
    move-object/from16 v20, v3

    move-object/from16 v31, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    invoke-static {v1, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->setLockScreenUiFormat(I)Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;

    :goto_15
    move-object/from16 v22, v12

    move-object/from16 v3, v20

    move-object/from16 v12, v23

    move-object/from16 v14, v28

    move-object/from16 v23, v13

    move-object/from16 v13, v31

    goto/16 :goto_9

    :cond_17
    move-object/from16 v20, v3

    move-object/from16 v31, v13

    move v9, v14

    move-object/from16 v13, v23

    const/4 v14, 0x0

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    invoke-interface {v1, v9, v14, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Landroid/security/keystore/recovery/KeyChainProtectionParams$Builder;->build()Landroid/security/keystore/recovery/KeyChainProtectionParams;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v12

    move-object/from16 v3, v20

    move-object/from16 v12, v23

    move-object/from16 v9, v26

    move-object/from16 v2, v27

    move-object/from16 v14, v28

    move-object/from16 v23, v13

    move-object/from16 v13, v31

    goto/16 :goto_8

    :catch_0
    move-exception v0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v2, "Failed to build KeyChainProtectionParams"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_18
    move-object/from16 v27, v2

    move-object/from16 v20, v3

    move-object/from16 v31, v13

    move-object/from16 v28, v14

    move-object/from16 v13, v23

    const/4 v14, 0x0

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    invoke-interface {v1, v9, v14, v10}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setKeyChainProtectionParams(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    :goto_16
    move-object/from16 v15, v21

    move-object/from16 v0, v23

    move-object/from16 v4, v25

    move-object/from16 v3, v28

    move-object/from16 v2, v31

    move-object/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v6, v17

    move-object/from16 v8, v27

    goto/16 :goto_7

    :pswitch_8
    move-object/from16 v27, v2

    move-object/from16 v20, v3

    move-object/from16 v26, v9

    move-object/from16 v31, v13

    move-object/from16 v28, v14

    move-object/from16 v13, v23

    const/4 v0, 0x2

    const/4 v9, 0x3

    const/4 v14, 0x0

    move-object/from16 v23, v12

    move-object/from16 v12, v22

    invoke-interface {v1, v0, v14, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v9, v14, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v5, v2, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setCounterId(J)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto :goto_16

    :catch_1
    move-exception v0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "counterId expected long but got \'"

    const-string v4, "\'"

    invoke-static {v3, v2, v4}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_9
    move-object/from16 v27, v2

    move-object/from16 v20, v3

    move-object/from16 v26, v9

    move-object v0, v12

    move-object/from16 v31, v13

    move-object/from16 v28, v14

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    const/4 v9, 0x2

    const/4 v14, 0x0

    invoke-interface {v1, v9, v14, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_17
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v15, 0x3

    if-eq v3, v15, :cond_1f

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v9, :cond_19

    goto :goto_17

    :cond_19
    const-string/jumbo v3, "applicationKey"

    invoke-interface {v1, v9, v14, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    invoke-direct {v14}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;-><init>()V

    :goto_18
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v9

    if-eq v9, v15, :cond_1e

    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v9

    const/4 v15, 0x2

    if-eq v9, v15, :cond_1a

    const/4 v15, 0x3

    goto :goto_18

    :cond_1a
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_3

    move-object/from16 v15, v21

    :goto_19
    move-object/from16 v21, v6

    move-object/from16 v6, v17

    :goto_1a
    move-object/from16 v17, v7

    move-object/from16 v7, v16

    :goto_1b
    move/from16 v16, v19

    goto :goto_1c

    :sswitch_f
    move-object/from16 v15, v21

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1b

    goto :goto_19

    :cond_1b
    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    const/16 v16, 0x2

    goto :goto_1c

    :sswitch_10
    move-object/from16 v15, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c

    goto :goto_1a

    :cond_1c
    move-object/from16 v17, v7

    move-object/from16 v7, v16

    const/16 v16, 0x1

    goto :goto_1c

    :sswitch_11
    move-object/from16 v15, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1d

    goto :goto_1b

    :cond_1d
    move/from16 v16, v18

    :goto_1c
    packed-switch v16, :pswitch_data_3

    new-instance v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, " in wrappedApplicationKey"

    invoke-static {v4, v9, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    move-object/from16 v16, v4

    const/4 v4, 0x0

    const/4 v9, 0x2

    invoke-interface {v1, v9, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v23, v8

    const/4 v8, 0x3

    invoke-interface {v1, v8, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setAlias(Ljava/lang/String;)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_1d

    :pswitch_b
    move-object/from16 v16, v4

    move-object/from16 v23, v8

    const/4 v4, 0x0

    const/4 v8, 0x3

    invoke-static {v1, v6}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setEncryptedKeyMaterial([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    goto :goto_1d

    :pswitch_c
    move-object/from16 v16, v4

    move-object/from16 v23, v8

    const/4 v4, 0x0

    const/4 v8, 0x3

    invoke-static {v1, v7}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->setMetadata([B)Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;

    :goto_1d
    move-object/from16 v4, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v15

    move v15, v8

    move-object/from16 v8, v23

    goto/16 :goto_18

    :cond_1e
    move-object/from16 v23, v8

    move v8, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-interface {v1, v8, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v14}, Landroid/security/keystore/recovery/WrappedApplicationKey$Builder;->build()Landroid/security/keystore/recovery/WrappedApplicationKey;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    move-object/from16 v8, v23

    const/4 v9, 0x2

    const/4 v14, 0x0

    move-object/from16 v16, v7

    move-object/from16 v7, v17

    move-object/from16 v17, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v15

    goto/16 :goto_17

    :catch_2
    move-exception v0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v2, "Failed to build WrappedApplicationKey"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1f
    move-object/from16 v23, v8

    move v9, v15

    move-object/from16 v15, v21

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-interface {v1, v9, v14, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setWrappedApplicationKeys(Ljava/util/List;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-object/from16 v4, v25

    move-object/from16 v8, v27

    move-object/from16 v3, v28

    move-object/from16 v2, v31

    goto/16 :goto_20

    :pswitch_d
    move-object/from16 v27, v2

    move-object/from16 v20, v3

    move-object/from16 v26, v9

    move-object v0, v12

    move-object v2, v13

    move-object/from16 v28, v14

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-static {v1, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setSnapshotVersion(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-object/from16 v4, v25

    move-object/from16 v8, v27

    move-object/from16 v3, v28

    goto/16 :goto_20

    :pswitch_e
    move-object/from16 v27, v2

    move-object/from16 v20, v3

    move-object/from16 v26, v9

    move-object v0, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    :try_start_3
    invoke-static {v1, v3}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v4
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    const-string/jumbo v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v4
    :try_end_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {v5, v4}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setTrustedHardwareCertPath(Ljava/security/cert/CertPath;)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    move-object/from16 v4, v25

    :goto_1e
    move-object/from16 v8, v27

    goto/16 :goto_20

    :catch_3
    move-exception v0

    goto :goto_1f

    :catch_4
    move-exception v0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Could not parse CertPath in tag "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3

    :goto_1f
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v2, "Could not set trustedHardwareCertPath"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_f
    move-object/from16 v27, v2

    move-object/from16 v20, v3

    move-object/from16 v26, v9

    move-object v0, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v4, v25

    move-object/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-static {v1, v4}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setEncryptedRecoveryKeyBlob([B)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    goto :goto_1e

    :pswitch_10
    move-object/from16 v27, v2

    move-object/from16 v20, v3

    move-object/from16 v26, v9

    move-object v0, v12

    move-object v2, v13

    move-object v3, v14

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v4, v25

    move-object/from16 v21, v6

    move-object/from16 v23, v8

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    goto :goto_1e

    :pswitch_11
    move-object v0, v8

    move-object v8, v2

    move-object v2, v13

    move-object/from16 v13, v23

    move-object/from16 v23, v0

    move-object/from16 v20, v3

    move-object/from16 v26, v9

    move-object v0, v12

    move-object v3, v14

    move-object/from16 v15, v21

    move-object/from16 v12, v22

    move-object/from16 v4, v25

    move-object/from16 v21, v6

    move-object/from16 v6, v17

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    invoke-static {v1, v8}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->setMaxAttempts(I)Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;

    :goto_20
    move-object v9, v13

    move-object v13, v2

    move-object v2, v8

    move-object/from16 v8, v23

    move-object/from16 v23, v9

    move-object v14, v3

    move-object/from16 v16, v7

    move-object/from16 v22, v12

    move-object/from16 v7, v17

    move-object/from16 v3, v20

    move-object/from16 v9, v26

    move-object v12, v0

    move-object/from16 v17, v6

    move-object/from16 v6, v21

    move-object/from16 v21, v15

    move-object v15, v4

    goto/16 :goto_1

    :cond_20
    move v0, v4

    move-object/from16 v9, v24

    const/4 v14, 0x0

    invoke-interface {v1, v0, v14, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_6
    invoke-virtual {v5}, Landroid/security/keystore/recovery/KeyChainSnapshot$Builder;->build()Landroid/security/keystore/recovery/KeyChainSnapshot;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    const-string v2, "Failed to build KeyChainSnapshot"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        -0x66841336 -> :sswitch_8
        -0x52c1d0fe -> :sswitch_7
        -0x51ae5e2f -> :sswitch_6
        -0x5190b3fe -> :sswitch_5
        0x1caf9a74 -> :sswitch_4
        0x46f25222 -> :sswitch_3
        0x5099d037 -> :sswitch_2
        0x5f2e61bf -> :sswitch_1
        0x6bb456a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x2e4cfbbb -> :sswitch_b
        -0x298abfcb -> :sswitch_a
        0x3662dd9c -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x3a02fc64 -> :sswitch_e
        0x35c056 -> :sswitch_d
        0xd70b46f -> :sswitch_c
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x660f5152 -> :sswitch_11
        -0x3969675a -> :sswitch_10
        0x5899650 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public static readBlobTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {p0, v2, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :try_start_0
    invoke-static {v0, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected base64 encoded bytes but got \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readIntTag(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotDeserializer;->readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {p0, v2, v1, p1}, Lcom/android/modules/utils/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotParserException;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " expected int but got \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readText(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->nextTag()I

    return-object v0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
