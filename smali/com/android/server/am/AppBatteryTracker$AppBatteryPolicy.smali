.class public final Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public volatile mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

.field public mBatteryFullChargeMah:I

.field public volatile mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public volatile mBgCurrentDrainBgRestrictedThreshold:[F

.field public volatile mBgCurrentDrainBgRestrictedTypes:I

.field public volatile mBgCurrentDrainDecoupleThresholds:Z

.field public volatile mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public volatile mBgCurrentDrainExemptedTypes:I

.field public volatile mBgCurrentDrainHighThresholdByBgLocation:Z

.field public volatile mBgCurrentDrainInteractionGracePeriodMs:J

.field public volatile mBgCurrentDrainLocationMinDuration:J

.field public volatile mBgCurrentDrainMediaPlaybackMinDuration:J

.field public volatile mBgCurrentDrainPowerComponents:I

.field public volatile mBgCurrentDrainRestrictedBucketThreshold:[F

.field public volatile mBgCurrentDrainRestrictedBucketTypes:I

.field public volatile mBgCurrentDrainWindowMs:J

.field public final mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field public final mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

.field public final mDefaultBgCurrentDrainBgRestrictedThreshold:F

.field public final mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field public final mDefaultBgCurrentDrainExemptedTypes:I

.field public final mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

.field public final mDefaultBgCurrentDrainInteractionGracePeriodMs:J

.field public final mDefaultBgCurrentDrainLocationMinDuration:J

.field public final mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

.field public final mDefaultBgCurrentDrainPowerComponent:I

.field public final mDefaultBgCurrentDrainRestrictedBucket:F

.field public final mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

.field public final mDefaultBgCurrentDrainTypesToBgRestricted:I

.field public final mDefaultBgCurrentDrainWindowMs:J

.field public final mDefaultCurrentDrainTypesToRestrictedBucket:I

.field public final mHighBgBatteryPackages:Landroid/util/SparseArray;

.field public final mLastInteractionTime:Landroid/util/SparseLongArray;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V
    .locals 12

    iget-object v0, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string/jumbo v1, "bg_current_drain_monitor_enabled"

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    const/4 p1, 0x2

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    iget-object p1, p2, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10700ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object p2

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    aget p2, p2, v2

    goto :goto_0

    :cond_0
    aget p2, p2, v1

    :goto_0
    iput p2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    const v0, 0x10700ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_1

    aget v0, v0, v2

    goto :goto_1

    :cond_1
    aget v0, v0, v1

    :goto_1
    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    const v3, 0x10e0054

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    const v5, 0x10700ab

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v6

    if-eqz v6, :cond_2

    aget v5, v5, v2

    goto :goto_2

    :cond_2
    aget v5, v5, v1

    :goto_2
    iput v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    const v6, 0x10700aa

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-eqz v7, :cond_3

    aget v6, v6, v2

    goto :goto_3

    :cond_3
    aget v6, v6, v1

    :goto_3
    iput v6, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    const v7, 0x10e0050

    invoke-virtual {p1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    const v9, 0x10e004f

    invoke-virtual {p1, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    const v11, 0x111005f

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    const v11, 0x111005e

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    const v11, 0x10e0053

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    const v11, 0x10e0052

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    const v11, 0x10e0051

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    const v11, 0x10e004e

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    iput v11, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    const v11, 0x1110060

    invoke-virtual {p1, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aput p2, p1, v1

    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aput v5, p1, v2

    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aput v0, p1, v1

    iget-object p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aput v6, p1, v2

    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    iput-wide v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    iput-wide v7, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    iput-wide v9, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    return-void
.end method

.method public static batteryUsageTypesToString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_6

    if-eqz v2, :cond_0

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[UNKNOWN("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v3, "CACHED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "FOREGROUND_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v3, "BACKGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v3, "FOREGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "UNSPECIFIED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    goto :goto_0

    :cond_6
    const-string/jumbo p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p0, p1, p2, p3}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "0"

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "APP BATTERY TRACKER POLICY SETTINGS:"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-super {v0, v6, v1}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    if-eqz v2, :cond_9

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "bg_current_drain_threshold_to_restricted_bucket"

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x3d

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v7, 0x0

    aget v3, v3, v7

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_high_threshold_to_restricted_bucket"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v8, 0x1

    aget v3, v3, v8

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_threshold_to_bg_restricted"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v3, v3, v7

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_high_threshold_to_bg_restricted"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v3, v3, v8

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_window"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    const-string/jumbo v5, "bg_current_drain_interaction_grace_period"

    invoke-static {v3, v4, v6, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    const-string/jumbo v5, "bg_current_drain_media_playback_min_duration"

    invoke-static {v3, v4, v6, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    const-string/jumbo v5, "bg_current_drain_location_min_duration"

    invoke-static {v3, v4, v6, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    const-string/jumbo v5, "bg_current_drain_event_duration_based_threshold_enabled"

    invoke-static {v3, v4, v6, v1, v5}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticOutline0;->m(JLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_types_to_restricted_bucket"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_types_to_bg_restricted"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_power_components"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_exempted_types"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    move v9, v7

    :goto_0
    if-eqz v5, :cond_6

    if-eqz v9, :cond_0

    const/16 v9, 0x7c

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eq v5, v8, :cond_5

    const/4 v9, 0x2

    if-eq v5, v9, :cond_4

    const/4 v9, 0x4

    if-eq v5, v9, :cond_3

    const/16 v9, 0x8

    if-eq v5, v9, :cond_2

    const/16 v9, 0x10

    if-eq v5, v9, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[UNKNOWN("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    const-string/jumbo v9, "PERMISSION"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v9, "FGS_NOTIFICATION"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v9, "FGS_LOCATION"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v9, "FGS_MEDIA_PLAYBACK"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v9, "MEDIA_SESSION"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    not-int v5, v5

    and-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    move v9, v8

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "bg_current_drain_high_threshold_by_bg_location"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-boolean v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    const-string v3, "Full charge capacity="

    invoke-static {v6, v1, v3, v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Z)V

    iget v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " mAh"

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Excessive current drain detected:"

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    if-lez v10, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move v12, v7

    :goto_3
    if-ge v12, v10, :cond_7

    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v13, v5

    check-cast v13, [J

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v4

    check-cast v14, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    move-result v4

    const-string v5, "%s%s: (threshold=%4.2f%%/%4.2f%%) %s / %s\n"

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    iget-object v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aget v15, v15, v4

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move/from16 p2, v7

    iget-object v7, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v4, v7, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v7, v8

    move-object/from16 v17, v9

    :try_start_1
    aget-wide v8, v13, p2

    move/from16 v18, v7

    aget-object v7, v14, p2

    invoke-static {v8, v9, v2, v3, v7}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    move-result-object v7

    aget-wide v8, v13, v18

    aget-object v13, v14, v18

    invoke-static {v8, v9, v2, v3, v13}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    move-result-object v16

    move-object v14, v4

    move-object v13, v15

    move-object v15, v7

    move v7, v12

    move-object v12, v1

    filled-new-array/range {v11 .. v16}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v5, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v12, v7, 0x1

    move/from16 v7, p2

    move-object/from16 v9, v17

    move/from16 v8, v18

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v17, v9

    goto :goto_5

    :cond_7
    move-object/from16 v17, v9

    goto :goto_4

    :cond_8
    move-object/from16 v17, v9

    invoke-virtual {v6, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "(none)"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    monitor-exit v17

    return-void

    :goto_5
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    return-void
.end method

.method public final getCurrentDrainThresholdIndex(IJJ)I
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-long v4, p2, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    iget-object v4, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v6, v4, Lcom/android/server/am/AppRestrictionController$Injector;->mAppMediaSessionTracker:Lcom/android/server/am/AppMediaSessionTracker;

    const/4 v8, 0x0

    move/from16 v7, p1

    move-wide/from16 v11, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    move-result-wide v4

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v6, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v8

    move/from16 v7, p1

    move-wide/from16 v11, p2

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    const/4 v5, -0x1

    move/from16 v7, p1

    invoke-virtual {v1, v4, v5, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    sub-long v4, p2, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    iget-object v1, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v1, v1, Lcom/android/server/am/AppRestrictionController;->mInjector:Lcom/android/server/am/AppRestrictionController$Injector;

    iget-object v11, v1, Lcom/android/server/am/AppRestrictionController$Injector;->mAppFGSTracker:Lcom/android/server/am/AppFGSTracker;

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/android/server/am/AppFGSTracker;->foregroundServiceTypeToIndex(I)I

    move-result v13

    move-wide/from16 v16, p2

    move v12, v7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/BaseAppStateDurationsTracker;->getTotalDurationsSince(IIJJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    cmp-long v0, v1, v3

    if-ltz v0, :cond_4

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final getProposedRestrictionLevel(IILjava/lang/String;)I
    .locals 10

    const/4 p3, 0x0

    const/16 v0, 0x1e

    if-gt p2, v0, :cond_0

    return p3

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, p1, v4, v5}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v6

    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, [J

    aget-wide v2, p1, p3

    iget-wide v8, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long/2addr v6, v8

    cmp-long v2, v2, v6

    const/4 v3, 0x1

    if-lez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, p3

    :goto_0
    iget-object v6, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v6, Lcom/android/server/am/AppBatteryTracker;

    iget-object v6, v6, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v6, v6, Lcom/android/server/am/AppRestrictionController;->mConstantsObserver:Lcom/android/server/am/AppRestrictionController$ConstantsObserver;

    iget-boolean v6, v6, Lcom/android/server/am/AppRestrictionController$ConstantsObserver;->mBgAutoRestrictAbusiveApps:Z

    if-eqz v6, :cond_2

    iget-boolean p0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    if-eqz p0, :cond_2

    move p3, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    const/16 p0, 0x28

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    const/16 p3, 0x32

    if-le p2, p3, :cond_5

    aget-wide p1, p1, v3

    cmp-long p1, p1, v4

    if-lez p1, :cond_4

    move p0, p3

    :cond_4
    monitor-exit v1

    return p0

    :cond_5
    if-ne p2, p3, :cond_6

    monitor-exit v1

    return p0

    :cond_6
    monitor-exit v1

    return v0

    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v6, p2

    iget-object v2, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v2, v1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    goto/16 :goto_7

    :cond_0
    iget-object v2, v6, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    const-wide/16 v7, 0x0

    move-wide v9, v7

    :goto_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    aget-wide v11, v2, v5

    add-double/2addr v9, v11

    not-int v4, v4

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    goto :goto_0

    :cond_1
    iget-object v2, v6, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    iget v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    :goto_1
    if-eqz v4, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v5

    aget-wide v11, v2, v5

    add-double/2addr v7, v11

    not-int v4, v4

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    goto :goto_1

    :cond_2
    iget-object v11, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v2, Lcom/android/server/am/AppBatteryTracker;

    iget-object v2, v2, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController;->mRestrictionSettings:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->getRestrictionLevel(I)I

    move-result v12

    const/16 v2, 0x32

    if-lt v12, v2, :cond_3

    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_3
    iget-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    const-wide/16 v13, 0x0

    invoke-virtual {v2, v1, v13, v14}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    move-wide/from16 v17, v13

    iget-boolean v13, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    iget-object v14, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aget v14, v14, v4

    move-wide/from16 v19, v2

    float-to-double v2, v14

    iget-object v14, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v4, v14, v4

    move-wide/from16 v21, v2

    float-to-double v2, v4

    const/4 v14, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v4, 0x1

    if-gez v5, :cond_8

    cmpl-double v5, v9, v21

    if-ltz v5, :cond_5

    iget-wide v9, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long/2addr v15, v9

    cmp-long v5, v19, v15

    if-lez v5, :cond_4

    new-array v5, v14, [J

    aput-wide v19, v5, v23

    new-array v9, v14, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object v6, v9, v23

    iget-object v10, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-static {v5, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v12

    invoke-virtual {v10, v1, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v23, v4

    move-object/from16 v24, v9

    goto :goto_2

    :cond_4
    move-object/from16 v5, v24

    :goto_2
    move v9, v4

    goto :goto_3

    :cond_5
    move/from16 v9, v23

    move-object/from16 v5, v24

    :goto_3
    if-eqz v13, :cond_7

    cmpl-double v2, v7, v2

    if-ltz v2, :cond_7

    if-nez v5, :cond_6

    new-array v5, v14, [J

    new-array v2, v14, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v3, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v24, v2

    :cond_6
    aput-wide v19, v5, v4

    aput-object v6, v24, v4

    move v9, v4

    move/from16 v23, v9

    :cond_7
    move/from16 v25, v4

    goto :goto_6

    :cond_8
    move/from16 v25, v4

    iget-object v4, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [J

    aget-wide v26, v5, v23

    cmpl-double v9, v9, v21

    if-ltz v9, :cond_b

    iget-wide v9, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long/2addr v15, v9

    cmp-long v9, v19, v15

    if-lez v9, :cond_a

    cmp-long v9, v26, v17

    if-nez v9, :cond_9

    aput-wide v19, v5, v23

    iget-object v9, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object v6, v9, v23

    :cond_9
    move/from16 v9, v25

    goto :goto_4

    :cond_a
    move/from16 v9, v23

    :goto_4
    move v10, v9

    move/from16 v9, v25

    goto :goto_5

    :cond_b
    move/from16 v9, v23

    move v10, v9

    :goto_5
    cmpl-double v2, v7, v2

    if-ltz v2, :cond_f

    if-nez v13, :cond_c

    const/16 v2, 0x28

    if-ne v12, v2, :cond_d

    iget-wide v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    add-long v26, v26, v2

    cmp-long v2, v19, v26

    if-lez v2, :cond_d

    :cond_c
    move/from16 v23, v25

    :cond_d
    if-eqz v23, :cond_e

    aput-wide v19, v5, v25

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object v6, v2, v25

    :cond_e
    move/from16 v9, v25

    goto :goto_6

    :cond_f
    aput-wide v17, v5, v25

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object v24, v2, v25

    move/from16 v23, v10

    :goto_6
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_10

    if-eqz v23, :cond_10

    iget-object v0, v0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v2, 0x600

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    :cond_10
    :goto_7
    return-void

    :goto_8
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onPropertiesChanged(Ljava/lang/String;)V
    .locals 12

    const-string/jumbo v0, "bg_current_drain_window"

    const-string/jumbo v1, "bg_current_drain_exempted_types"

    const-string/jumbo v2, "bg_current_drain_interaction_grace_period"

    const-string/jumbo v3, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    const-string/jumbo v4, "bg_current_drain_location_min_duration"

    const-string/jumbo v5, "bg_current_drain_media_playback_min_duration"

    const/4 v6, 0x1

    const-string/jumbo v7, "bg_current_drain_decouple_thresholds"

    const-string/jumbo v8, "bg_current_drain_event_duration_based_threshold_enabled"

    const-string/jumbo v9, "activity_manager"

    const/4 v10, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v10, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v11, "bg_current_drain_threshold_to_restricted_bucket"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v11, "bg_current_drain_threshold_to_bg_restricted"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v10, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v11, "bg_current_drain_types_to_bg_restricted"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v10, 0xc

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v10, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v11, "bg_current_drain_types_to_restricted_bucket"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0xa

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v10, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string/jumbo v11, "bg_current_drain_high_threshold_by_bg_location"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    goto :goto_0

    :cond_7
    const/16 v10, 0x8

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    goto :goto_0

    :cond_8
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_9
    const-string/jumbo v11, "bg_current_drain_high_threshold_to_bg_restricted"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_0

    :cond_9
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    goto :goto_0

    :cond_a
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_b
    const-string/jumbo v11, "bg_current_drain_high_threshold_to_restricted_bucket"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    goto :goto_0

    :cond_b
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_c
    const-string/jumbo v11, "bg_current_drain_power_components"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_0

    :cond_c
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_0

    :cond_d
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_e
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_0

    :cond_e
    move v10, v6

    goto :goto_0

    :sswitch_f
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    goto :goto_0

    :cond_f
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mKeyTrackerEnabled:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateTrackerEnabled()V

    :cond_10
    return-void

    :pswitch_0
    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    invoke-static {v9, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    return-void

    :pswitch_1
    iget p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    invoke-static {v9, v1, p1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    return-void

    :pswitch_2
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    invoke-static {v9, v2, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    return-void

    :pswitch_3
    iget-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    invoke-static {v9, v3, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    return-void

    :pswitch_4
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    invoke-static {v9, v4, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    return-void

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    return-void

    :pswitch_6
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    invoke-static {v9, v5, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    return-void

    :pswitch_7
    invoke-static {v9, v7, v6}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    return-void

    :pswitch_8
    iget-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    invoke-static {v9, v8, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x756855de -> :sswitch_f
        -0x701eaca1 -> :sswitch_e
        -0x1fb1101d -> :sswitch_d
        -0x1f35f949 -> :sswitch_c
        -0x1d805c6c -> :sswitch_b
        0x303f164 -> :sswitch_a
        0x60568db -> :sswitch_9
        0x7be7274 -> :sswitch_8
        0x17cc3411 -> :sswitch_7
        0x1edfa25c -> :sswitch_6
        0x270cf0f7 -> :sswitch_5
        0x2ad74b9f -> :sswitch_4
        0x43bedfbe -> :sswitch_3
        0x513daa8c -> :sswitch_2
        0x6f6da4c5 -> :sswitch_1
        0x74efacd7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public final onSystemReady()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker$Injector;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryFullCharge()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateTrackerEnabled()V

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    const-string/jumbo v0, "bg_current_drain_window"

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    const-string/jumbo v3, "activity_manager"

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    const-string/jumbo v0, "bg_current_drain_interaction_grace_period"

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    const-string/jumbo v0, "bg_current_drain_media_playback_min_duration"

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    const-string/jumbo v0, "bg_current_drain_location_min_duration"

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    invoke-static {v3, v0, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    const-string/jumbo v0, "bg_current_drain_event_duration_based_threshold_enabled"

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    const-string/jumbo v0, "bg_current_drain_exempted_types"

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    const-string/jumbo v0, "bg_current_drain_decouple_thresholds"

    const/4 v1, 0x1

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    const-string/jumbo v0, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Lcom/android/server/am/AppRestrictionController$BgHandler;

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    monitor-exit p1

    :cond_2
    return-void

    :goto_1
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    iget-object p0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker;->reset()V

    return-void
.end method

.method public final updateCurrentDrainThreshold()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const-string/jumbo v1, "bg_current_drain_threshold_to_restricted_bucket"

    iget v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    const-string/jumbo v3, "activity_manager"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const-string/jumbo v1, "bg_current_drain_high_threshold_to_restricted_bucket"

    iget v4, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    invoke-static {v3, v1, v4}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    const-string/jumbo v1, "bg_current_drain_threshold_to_bg_restricted"

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    invoke-static {v3, v1, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    const-string/jumbo v1, "bg_current_drain_high_threshold_to_bg_restricted"

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    invoke-static {v3, v1, v5}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v4

    const-string/jumbo v0, "bg_current_drain_types_to_restricted_bucket"

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    const-string/jumbo v0, "bg_current_drain_types_to_bg_restricted"

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    const-string/jumbo v0, "bg_current_drain_power_components"

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    new-array v1, v0, [Landroid/os/BatteryConsumer$Dimensions;

    iput-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    new-instance v4, Landroid/os/BatteryConsumer$Dimensions;

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    invoke-direct {v4, v5, v2}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string/jumbo v0, "bg_current_drain_high_threshold_by_bg_location"

    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    invoke-static {v3, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    return-void
.end method

.method public final updateTrackerEnabled()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    if-lez v0, :cond_0

    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BaseAppStatePolicy;->mTrackerEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onTrackerEnabled(Z)V

    return-void
.end method
