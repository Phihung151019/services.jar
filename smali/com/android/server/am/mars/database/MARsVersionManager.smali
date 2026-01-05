.class public final Lcom/android/server/am/mars/database/MARsVersionManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final mCurrentImportantDefault:[[Ljava/lang/String;

.field public static final mMARsSettingsInfoDefault:[[Ljava/lang/String;

.field public static final mPolicyInfoDefault:[[Ljava/lang/String;

.field public static mPolicyInfoList:Ljava/util/ArrayList;


# instance fields
.field public mExcludeTargetList:Ljava/util/ArrayList;

.field public mIsCurrentImportantMap:Landroid/util/ArrayMap;

.field public mRestrictionList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string/jumbo v0, "marsversion"

    const-string v1, "1020230413"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "skipratio"

    const-string v1, "90"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "killthreshold"

    const-string v1, "100"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "restrictionthreshold"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "unused_app_period_days"

    const-string v1, "32"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "restriction_flag"

    const-string v1, "255"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v2 .. v7}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    const-string v7, "10"

    const-string v8, "337379600"

    const-string v1, "1"

    const-string v2, "1"

    const-string v3, "13"

    const-string v4, "354255120"

    const-string v5, "12"

    const-string v6, "10"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    const-string v7, "5"

    const-string v8, "270272640"

    const-string v1, "2"

    const-string v2, "0"

    const-string v3, "21"

    const-string v4, "270272648"

    const-string v5, "10"

    const-string v6, "10"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v8, "1"

    const-string v9, "270272640"

    const-string v2, "4"

    const-string v3, "0"

    const-string v4, "25"

    const-string v5, "270272648"

    const-string v6, "26"

    const-string v7, "5"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    const-string v9, "0"

    const-string v10, "0"

    const-string v3, "8"

    const-string v4, "1"

    const-string v5, "26"

    const-string v6, "0"

    const-string v7, "2"

    const-string v8, "5"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const-string v0, "0"

    const-string v1, "8000"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "1"

    const-string v1, "18284"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "2"

    const-string v4, "65529"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "4"

    const-string v5, "24032"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "5"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "6"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "7"

    const-string v1, "20251"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "8"

    const-string v1, "20264"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "9"

    const-string v1, "24446"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public static convertPolicyNumToName(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string/jumbo p0, "force"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    const-string/jumbo p0, "applocker"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p0, :cond_2

    const-string/jumbo p0, "autorun"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne v0, p0, :cond_3

    const-string/jumbo p0, "freecesspolicy"

    return-object p0

    :cond_3
    const/4 v0, 0x6

    if-ne v0, p0, :cond_4

    const-string/jumbo p0, "sbikepolicy"

    return-object p0

    :cond_4
    const/16 v0, 0x8

    if-ne v0, p0, :cond_5

    const-string/jumbo p0, "disablepolicy"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMARsSettingsInfoFromDefaultValue()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    aget-object v5, v4, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    new-instance v4, Lcom/android/server/am/mars/database/MARsVersionManager$MARsSettingsInfo;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getPolicyFromDefaultValue()V
    .locals 18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    aget-object v5, v1, v3

    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v4, 0x5

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/4 v4, 0x6

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const/4 v4, 0x7

    aget-object v4, v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/server/am/mars/database/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v8

    new-instance v7, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-direct/range {v7 .. v17}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;-><init>(Ljava/lang/String;IIIIIJJ)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getRestrictionFlag()I
    .locals 7

    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget-object v4, v4, v6

    :try_start_0
    const-string/jumbo v6, "restriction_flag"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "Exception getRestrictionFlag!"

    const-string/jumbo v6, "MARsVersionManager"

    invoke-static {v4, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static toNormalText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final getIsCurrentImportantFromDefaultValue()V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/mars/database/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    invoke-direct {v6, v5, v4}, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(II)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_14

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;

    iget v4, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->restrictionType:I

    if-ne p1, v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    if-nez v4, :cond_c

    :cond_2
    iget-object v4, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-nez v4, :cond_c

    :cond_4
    iget-object v4, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-eqz v4, :cond_a

    if-eqz p4, :cond_a

    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v6, "equals"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "equalsIgnoreCase"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p4, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "contains"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p4, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_0

    :cond_7
    const-string/jumbo v6, "startsWith"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p4, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_8
    const-string/jumbo v6, "endsWith"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p4, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_9
    move v3, v1

    :goto_0
    if-nez v3, :cond_b

    :cond_a
    if-nez v4, :cond_c

    :cond_b
    move v3, v5

    goto :goto_1

    :cond_c
    move v3, v1

    :goto_1
    if-eqz v3, :cond_0

    sget-boolean p0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz p0, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, " restrictionType = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x3

    const/4 v2, 0x7

    if-eq p1, v5, :cond_11

    const/4 v3, 0x2

    if-eq p1, v3, :cond_11

    if-ne p1, v2, :cond_d

    goto :goto_3

    :cond_d
    if-eq p1, v0, :cond_10

    const/4 v3, 0x4

    if-ne p1, v3, :cond_e

    goto :goto_2

    :cond_e
    const/16 v3, 0xe

    if-ne p1, v3, :cond_f

    const-string/jumbo v3, "Rogue app"

    goto :goto_4

    :cond_f
    const/4 v3, 0x0

    goto :goto_4

    :cond_10
    :goto_2
    const-string v3, "Essential intent"

    goto :goto_4

    :cond_11
    :goto_3
    const-string v3, "CHN app"

    :goto_4
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isAllowed = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq p1, v5, :cond_12

    if-eq p1, v0, :cond_12

    if-eq p1, v2, :cond_12

    goto :goto_5

    :cond_12
    move v1, v5

    :goto_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " callee = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " caller = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " action = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "MARsVersionManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v5

    :cond_14
    return v1
.end method

.method public final setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/mars/database/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string/jumbo p0, "MARsVersionManager"

    const-string/jumbo p1, "mIsCurrentImportantMap is null!"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
