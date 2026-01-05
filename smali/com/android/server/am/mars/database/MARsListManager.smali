.class public final Lcom/android/server/am/mars/database/MARsListManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final HEALTH_KEY_LIST:Ljava/util/List;


# instance fields
.field public final mAdjustRestrictionDefault:Ljava/util/ArrayList;

.field public final mCalmModeDefaultList:Ljava/util/Set;

.field public final mCalmModeFilterList:Ljava/util/Set;

.field public final mCtsGtsList:Ljava/util/Set;

.field public final mExcludePackageDefault:Ljava/util/ArrayList;

.field public final mFastOlafUfzList:Ljava/util/Set;

.field public final mFgsExemptionPackages:Ljava/util/Set;

.field public final mFilterList:Ljava/util/Set;

.field public final mFreezeExemption:Ljava/util/Set;

.field public final mFreezeExemptionChina:Ljava/util/Set;

.field public final mFreezeExemptionStartsWith:Ljava/util/Set;

.field public final mGoogleFreezerExemptionList:Ljava/util/Set;

.field public final mListFile:Ljava/io/File;

.field public final mLocationPackages:Ljava/util/Set;

.field public final mOLAFExemption:Ljava/util/Set;

.field public final mOLAFExemptionGlobal:Ljava/util/Set;

.field public final mOLAFExemptionStartsWith:Ljava/util/Set;

.field public final mOlafJobRestrictionExemptionList:Ljava/util/Set;

.field public final mOlafUfzList:Ljava/util/Set;

.field public final mPendingBlocklistForGPS:Ljava/util/ArrayList;

.field public final mPendingIntentIdleList:Ljava/util/ArrayList;

.field public final mPendingIntentList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "14aafbdad4dd99765346a1de191320328465b8420713bc22cc4f8b211b87cd3a"

    const-string/jumbo v1, "c88c9048f6d0fe9d8561926240f2ccc1982e24721150929350384659aa54aef6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsListManager;->HEALTH_KEY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFgsExemptionPackages:Ljava/util/Set;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemption:Ljava/util/Set;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemptionChina:Ljava/util/Set;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemptionStartsWith:Ljava/util/Set;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemptionGlobal:Ljava/util/Set;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemption:Ljava/util/Set;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemptionStartsWith:Ljava/util/Set;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    iput-object v10, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    iput-object v11, v0, Lcom/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    iput-object v12, v0, Lcom/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    iput-object v13, v0, Lcom/android/server/am/mars/database/MARsListManager;->mLocationPackages:Ljava/util/Set;

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    iput-object v14, v0, Lcom/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v0, Lcom/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    move-object/from16 v17, v1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOlafJobRestrictionExemptionList:Ljava/util/Set;

    new-instance v1, Ljava/io/File;

    move-object/from16 v18, v2

    const-string v2, "/system/etc/mars/mars_list.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/server/am/mars/database/MARsListManager;->mListFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    move/from16 v19, v2

    const-string/jumbo v2, "MARsListManager"

    if-nez v19, :cond_0

    const-string/jumbo v0, "No xml file exists."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v19, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v19, :cond_1

    move-object/from16 v19, v3

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v20, v4

    const-string/jumbo v4, "Reading config from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->clear()V

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashSet;->clear()V

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashSet;->clear()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v10}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v12}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v14}, Ljava/util/HashSet;->clear()V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsListManager;->readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const-string/jumbo v1, "parsing config file error"

    invoke-static {v0, v1, v2}, Lcom/android/server/WallpaperUpdateReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean p3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz p3, :cond_0

    const-string p3, "<"

    const-string v0, "> "

    const-string/jumbo v1, "MARsListManager"

    invoke-static {p3, p2, v0, p1, v1}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final readConfigFileLocked(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_0

    if-eq v6, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mars-list"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_1
    :goto_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v4, :cond_30

    if-ne v7, v3, :cond_2

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ge v8, v6, :cond_30

    :cond_2
    if-eq v7, v3, :cond_1

    if-ne v7, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v8, "action"

    const-string/jumbo v9, "isAllowed"

    const-string/jumbo v10, "callee"

    const-string/jumbo v11, "matchType"

    const-string/jumbo v12, "prefix"

    const-string v13, "> "

    const-string v14, "<"

    const-string/jumbo v15, "filter"

    const-string/jumbo v2, "MARsListManager"

    const/4 v3, 0x0

    const-string/jumbo v4, "package"

    const/16 v16, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string/jumbo v5, "fast-olaf-ufz-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v16, 0x26

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v5, "block-associated-activity"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_2

    :cond_5
    const/16 v16, 0x25

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v5, "allow-china-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_2

    :cond_6
    const/16 v16, 0x24

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v5, "block-instrument-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_2

    :cond_7
    const/16 v16, 0x23

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v5, "allow-in-fgs"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_2

    :cond_8
    const/16 v16, 0x22

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v5, "olaf-exemption-global"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_2

    :cond_9
    const/16 v16, 0x21

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v5, "allow-setwindow-alarm-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_2

    :cond_a
    const/16 v16, 0x20

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v5, "olaf-job-exemption-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_2

    :cond_b
    const/16 v16, 0x1f

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v5, "freeze-exemption-china"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto/16 :goto_2

    :cond_c
    const/16 v16, 0x1e

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v5, "allow-alarm-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto/16 :goto_2

    :cond_d
    const/16 v16, 0x1d

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v5, "freeze-exemption"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_2

    :cond_e
    const/16 v16, 0x1c

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v5, "location-app-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v16, 0x1b

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v5, "block-china-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto/16 :goto_2

    :cond_10
    const/16 v16, 0x1a

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v5, "allow-alarm-wakeup-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto/16 :goto_2

    :cond_11
    const/16 v16, 0x19

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v5, "freezer-exemption-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_2

    :cond_12
    const/16 v16, 0x18

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v5, "freeze-exemption-startswith"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto/16 :goto_2

    :cond_13
    const/16 v16, 0x17

    goto/16 :goto_2

    :sswitch_10
    const-string/jumbo v5, "allow-bgaudio-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    goto/16 :goto_2

    :cond_14
    const/16 v16, 0x16

    goto/16 :goto_2

    :sswitch_11
    const-string/jumbo v5, "force-block-chinese-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    goto/16 :goto_2

    :cond_15
    const/16 v16, 0x15

    goto/16 :goto_2

    :sswitch_12
    const-string/jumbo v5, "block-alarm-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    goto/16 :goto_2

    :cond_16
    const/16 v16, 0x14

    goto/16 :goto_2

    :sswitch_13
    const-string/jumbo v5, "except-mars-policy"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    goto/16 :goto_2

    :cond_17
    const/16 v16, 0x13

    goto/16 :goto_2

    :sswitch_14
    const-string/jumbo v5, "block-faketop-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_18

    goto/16 :goto_2

    :cond_18
    const/16 v16, 0x12

    goto/16 :goto_2

    :sswitch_15
    const-string/jumbo v5, "cts-gts-app-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    goto/16 :goto_2

    :cond_19
    const/16 v16, 0x11

    goto/16 :goto_2

    :sswitch_16
    const-string/jumbo v5, "allow-foreground-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    goto/16 :goto_2

    :cond_1a
    const/16 v16, 0x10

    goto/16 :goto_2

    :sswitch_17
    const-string/jumbo v5, "block-deepsleep-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    goto/16 :goto_2

    :cond_1b
    const/16 v16, 0xf

    goto/16 :goto_2

    :sswitch_18
    const-string/jumbo v5, "allow-async-binder-callee"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    goto/16 :goto_2

    :cond_1c
    const/16 v16, 0xe

    goto/16 :goto_2

    :sswitch_19
    const-string/jumbo v5, "pending-gps-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    goto/16 :goto_2

    :cond_1d
    const/16 v16, 0xd

    goto/16 :goto_2

    :sswitch_1a
    const-string/jumbo v5, "block-foregroundservice-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    goto/16 :goto_2

    :cond_1e
    const/16 v16, 0xc

    goto/16 :goto_2

    :sswitch_1b
    const-string/jumbo v5, "olaf-ufz-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto/16 :goto_2

    :cond_1f
    const/16 v16, 0xb

    goto/16 :goto_2

    :sswitch_1c
    const-string/jumbo v5, "allow-asyncbinder-fgs-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    goto/16 :goto_2

    :cond_20
    const/16 v16, 0xa

    goto/16 :goto_2

    :sswitch_1d
    const-string/jumbo v5, "olaf-exemption-startswith"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    goto/16 :goto_2

    :cond_21
    const/16 v16, 0x9

    goto/16 :goto_2

    :sswitch_1e
    const-string/jumbo v5, "filter-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    goto/16 :goto_2

    :cond_22
    const/16 v16, 0x8

    goto/16 :goto_2

    :sswitch_1f
    const-string/jumbo v5, "block-top-activity"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_2

    :cond_23
    const/16 v16, 0x7

    goto :goto_2

    :sswitch_20
    const-string/jumbo v5, "calm-mode-default-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    goto :goto_2

    :cond_24
    const/16 v16, 0x6

    goto :goto_2

    :sswitch_21
    const-string/jumbo v5, "calm-mode-filter-list"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_2

    :cond_25
    const/16 v16, 0x5

    goto :goto_2

    :sswitch_22
    const-string/jumbo v5, "pending-broadcast"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_2

    :cond_26
    const/16 v16, 0x4

    goto :goto_2

    :sswitch_23
    const-string/jumbo v5, "allow-async-binder"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    goto :goto_2

    :cond_27
    const/16 v16, 0x3

    goto :goto_2

    :sswitch_24
    const-string/jumbo v5, "allow-essential-intent"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    goto :goto_2

    :cond_28
    const/16 v16, 0x2

    goto :goto_2

    :sswitch_25
    const-string/jumbo v5, "block-alarm-wakeup-app"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    goto :goto_2

    :cond_29
    const/16 v16, 0x1

    goto :goto_2

    :sswitch_26
    const-string/jumbo v5, "olaf-exemption"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_2

    :cond_2a
    const/16 v16, 0x0

    :goto_2
    packed-switch v16, :pswitch_data_0

    const-string/jumbo v3, "Unknown element under <config>: "

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :pswitch_0
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFastOlafUfzList:Ljava/util/Set;

    invoke-static {v1, v15, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_1
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFgsExemptionPackages:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemptionGlobal:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOlafJobRestrictionExemptionList:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemptionChina:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_5
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemption:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_6
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mLocationPackages:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_7
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mGoogleFreezerExemptionList:Ljava/util/Set;

    const-string/jumbo v3, "process"

    invoke-static {v1, v3, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_8
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFreezeExemptionStartsWith:Ljava/util/Set;

    invoke-static {v1, v12, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_9
    const-string/jumbo v5, "policynum"

    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v8, "condition"

    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    new-instance v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    sget-object v10, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v10, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v4, v5, v8, v9, v3}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/am/mars/database/MARsListManager;->mExcludePackageDefault:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :pswitch_a
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mCtsGtsList:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_b
    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/mars/database/MARsListManager;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v4, :cond_2c

    invoke-static {v14, v7, v13, v3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :pswitch_c
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOlafUfzList:Ljava/util/Set;

    invoke-static {v1, v15, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_d
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemptionStartsWith:Ljava/util/Set;

    invoke-static {v1, v12, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_e
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mFilterList:Ljava/util/Set;

    invoke-static {v1, v15, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_f
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mCalmModeDefaultList:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_10
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mCalmModeFilterList:Ljava/util/Set;

    invoke-static {v1, v15, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_4

    :pswitch_11
    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "idle"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, v0, Lcom/android/server/am/mars/database/MARsListManager;->mPendingIntentIdleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2d
    iget-object v4, v0, Lcom/android/server/am/mars/database/MARsListManager;->mPendingIntentList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v4, :cond_2e

    invoke-static {v14, v7, v13, v3, v2}, Lcom/android/server/alarm/GmsAlarmManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :pswitch_12
    new-instance v18, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "restrictionType"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-interface {v1, v3, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v1, v3, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v4, "caller"

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-interface {v1, v3, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-interface {v1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v18 .. v24}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v3, v18

    iget-object v4, v0, Lcom/android/server/am/mars/database/MARsListManager;->mAdjustRestrictionDefault:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v4, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :pswitch_13
    iget-object v2, v0, Lcom/android/server/am/mars/database/MARsListManager;->mOLAFExemption:Ljava/util/Set;

    invoke-static {v1, v4, v7, v2}, Lcom/android/server/am/mars/database/MARsListManager;->parseAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :goto_4
    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x2

    goto/16 :goto_1

    :cond_30
    return-void

    :cond_31
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unexpected start tag in "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/server/am/mars/database/MARsListManager;->mListFile:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": found "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", expected \'mars-list\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73740582 -> :sswitch_26
        -0x6e66af31 -> :sswitch_25
        -0x589d4801 -> :sswitch_24
        -0x535525e1 -> :sswitch_23
        -0x45b67bf5 -> :sswitch_22
        -0x40aee9a9 -> :sswitch_21
        -0x3c92575a -> :sswitch_20
        -0x3c8bae39 -> :sswitch_1f
        -0x37cf8e2d -> :sswitch_1e
        -0x2cf280ba -> :sswitch_1d
        -0x276b4285 -> :sswitch_1c
        -0x25caed73 -> :sswitch_1b
        -0x1f78735a -> :sswitch_1a
        -0x142affb8 -> :sswitch_19
        -0x107dd914 -> :sswitch_18
        -0xdac9e81 -> :sswitch_17
        -0xc881265 -> :sswitch_16
        -0x989f4a4 -> :sswitch_15
        -0x828688c -> :sswitch_14
        0x283d876 -> :sswitch_13
        0x1559f365 -> :sswitch_12
        0x1797b99f -> :sswitch_11
        0x1f02b081 -> :sswitch_10
        0x26858291 -> :sswitch_f
        0x2c9f6374 -> :sswitch_e
        0x2f014193 -> :sswitch_d
        0x3e137b6b -> :sswitch_c
        0x3f9f43e2 -> :sswitch_b
        0x43951813 -> :sswitch_a
        0x47019721 -> :sswitch_9
        0x54e7871d -> :sswitch_8
        0x57de091d -> :sswitch_7
        0x58c9f6e6 -> :sswitch_6
        0x5a1c49d2 -> :sswitch_5
        0x62e8262e -> :sswitch_4
        0x64e1a47b -> :sswitch_3
        0x6fbb1f27 -> :sswitch_2
        0x759992b6 -> :sswitch_1
        0x7ca18adc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_12
        :pswitch_e
        :pswitch_d
        :pswitch_12
        :pswitch_c
        :pswitch_12
        :pswitch_b
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_a
        :pswitch_12
        :pswitch_9
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_8
        :pswitch_7
        :pswitch_12
        :pswitch_12
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_12
        :pswitch_2
        :pswitch_1
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_0
    .end packed-switch
.end method
