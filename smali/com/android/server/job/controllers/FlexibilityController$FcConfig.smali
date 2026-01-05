.class public final Lcom/android/server/job/controllers/FlexibilityController$FcConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field static final DEFAULT_DEADLINE_PROXIMITY_LIMIT_MS:J = 0xdbba0L

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

.field static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_MS:J = 0x5265c00L

.field public static final DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

.field static final DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field static final DEFAULT_UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J = 0xf731400L

.field static final KEY_APPLIED_CONSTRAINTS:Ljava/lang/String; = "fc_applied_constraints"


# instance fields
.field public APPLIED_CONSTRAINTS:I

.field public DEADLINE_PROXIMITY_LIMIT_MS:J

.field public final FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

.field public final FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

.field public FALLBACK_FLEXIBILITY_DEADLINE_MS:J

.field public final FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

.field public MAX_RESCHEDULED_DEADLINE_MS:J

.field public MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

.field public final PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

.field public RESCHEDULED_JOB_DEADLINE_MS:J

.field public UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

.field public mShouldReevaluateConstraints:Z

.field public final synthetic this$0:Lcom/android/server/job/controllers/FlexibilityController;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    sput-object v3, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    const-wide/32 v4, 0x36ee80

    const/16 v6, 0x1f4

    invoke-virtual {v0, v6, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v4, 0x1499700

    const/16 v7, 0x190

    invoke-virtual {v0, v7, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v4, 0x2932e00

    const/16 v8, 0x12c

    invoke-virtual {v0, v8, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v4, 0x5265c00

    const/16 v9, 0xc8

    invoke-virtual {v0, v9, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v4, 0xa4cb800

    const/16 v10, 0x64

    invoke-virtual {v0, v10, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    const/4 v0, 0x5

    invoke-virtual {v1, v6, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x4

    invoke-virtual {v1, v7, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v4, 0x3

    invoke-virtual {v1, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x2

    invoke-virtual {v1, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/util/SparseIntArray;->put(II)V

    const-wide/16 v12, 0x0

    invoke-virtual {v2, v6, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v12, 0x2bf20

    invoke-virtual {v2, v7, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v12, 0x1d4c0

    invoke-virtual {v2, v8, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    const-wide/32 v12, 0xea60

    invoke-virtual {v2, v9, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {v2, v10, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    filled-new-array {v11, v5, v4, v0}, [I

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x21

    const/16 v1, 0x32

    const/16 v2, 0x3c

    const/16 v4, 0x4b

    filled-new-array {v0, v1, v2, v4}, [I

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x46

    const/16 v5, 0x50

    filled-new-array {v1, v2, v0, v5}, [I

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    filled-new-array {v1, v2, v0, v5}, [I

    move-result-object v0

    invoke-virtual {v3, v9, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v0, 0x41

    const/16 v1, 0x55

    const/16 v2, 0x37

    filled-new-array {v2, v0, v4, v1}, [I

    move-result-object v0

    invoke-virtual {v3, v10, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->mShouldReevaluateConstraints:Z

    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEADLINE_PROXIMITY_LIMIT_MS:J

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_MS:J

    const-wide/32 v2, 0xea60

    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MIN_TIME_BETWEEN_FLEXIBILITY_ALARMS_MS:J

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->RESCHEDULED_JOB_DEADLINE_MS:J

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->MAX_RESCHEDULED_DEADLINE_MS:J

    const-wide/32 v0, 0xf731400

    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->UNSEEN_CONSTRAINT_GRACE_PERIOD_MS:J

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    move v0, p1

    :goto_0
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_2
    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    sget-object v0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static parsePercentToDropString(Ljava/lang/String;)[I
    .locals 6

    const-string v0, "JobScheduler.Flex"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v2, "\\|"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const v2, 0x10000007

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    new-array v3, v2, [I

    array-length v4, p0

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move v4, v2

    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_4

    :try_start_0
    aget-object v5, p0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v5, v4, :cond_2

    const-string/jumbo p0, "Percents to drop constraints were not in increasing order."

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const/16 v4, 0x64

    if-le v5, v4, :cond_3

    const-string p0, "Found % over 100"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v2, "Provided string was improperly formatted."

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_4
    return-object v3

    :cond_5
    :goto_1
    return-object v1
.end method

.method public static parsePriorityToLongKeyValueString(Ljava/lang/String;Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Z
    .locals 25

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Landroid/util/KeyValueListParser;

    const/16 v0, 0x2c

    invoke-direct {v3, v0}, Landroid/util/KeyValueListParser;-><init>(C)V

    move-object/from16 v0, p0

    :try_start_0
    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "JobScheduler.Flex"

    const-string v5, "Bad string given"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    :goto_0
    const/16 v0, 0x1f4

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v4

    const/16 v6, 0x190

    invoke-virtual {v1, v6}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v7

    const/16 v9, 0x12c

    invoke-virtual {v1, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v10

    const/16 v12, 0xc8

    invoke-virtual {v1, v12}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v13

    const/16 v15, 0x64

    invoke-virtual {v1, v15}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v16

    move/from16 p0, v15

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v18, v12

    move-wide/from16 v19, v13

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    invoke-virtual {v3, v15, v12, v13}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v6}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v0

    invoke-virtual {v3, v14, v0, v1}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v21, v7

    invoke-virtual {v2, v9}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v6

    invoke-virtual {v3, v14, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v23, v10

    move/from16 v14, v18

    invoke-virtual {v2, v14}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v9

    invoke-virtual {v3, v8, v9, v10}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v11, p0

    invoke-virtual {v2, v11}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v14

    invoke-virtual {v3, v10, v14, v15}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v10, p1

    const/16 v15, 0x1f4

    invoke-virtual {v10, v15, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    const/16 v14, 0x190

    invoke-virtual {v10, v14, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    const/16 v14, 0x12c

    invoke-virtual {v10, v14, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    const/16 v14, 0xc8

    invoke-virtual {v10, v14, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    invoke-virtual {v10, v11, v2, v3}, Landroid/util/SparseLongArray;->put(IJ)V

    cmp-long v4, v4, v12

    if-nez v4, :cond_1

    cmp-long v0, v21, v0

    if-nez v0, :cond_1

    cmp-long v0, v23, v6

    if-nez v0, :cond_1

    cmp-long v0, v19, v8

    if-nez v0, :cond_1

    cmp-long v0, v16, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method
