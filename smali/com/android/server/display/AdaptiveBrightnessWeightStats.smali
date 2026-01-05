.class public final Lcom/android/server/display/AdaptiveBrightnessWeightStats;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/display/AdaptiveBrightnessWeightStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field public final mBucketBoundaries:[F

.field public final mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

.field public final mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

.field public final mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;


# direct methods
.method public static -$$Nest$smgetDistributionRatio(FFFF)F
    .locals 3

    invoke-static {p0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    cmpg-float v0, p1, p2

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-gez v0, :cond_4

    cmpg-float v0, p2, p3

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float v0, p0, p2

    if-gez v0, :cond_2

    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    return p0

    :cond_2
    cmpl-float p1, p0, p2

    if-lez p1, :cond_3

    sub-float p0, p3, p0

    sub-float/2addr p3, p2

    div-float/2addr p0, p3

    return p0

    :cond_3
    return v1

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getDistributionRatio: wrong boundary "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " < "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdaptiveBrightnessWeightStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdaptiveBrightnessWeightStats (parcel): mBrightnessMapper: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessWeightStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    return-void
.end method

.method public constructor <init>([FLcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;-><init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V

    return-void
.end method

.method public constructor <init>([F[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "bucketBoundaries"

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1, v1, v2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsInRange([FFFLjava/lang/String;)[F

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_7

    array-length v0, p1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    aget v0, p1, v2

    move v3, v1

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget v4, p1, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    aget v0, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_3

    const-string p2, "AdaptiveBrightnessWeightStats"

    const-string v3, "AdaptiveBrightnessWeightStats: stats is null. default!"

    invoke-static {p2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length p2, p1

    new-array p2, p2, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move v3, v2

    :goto_3
    array-length v4, p1

    if-ge v3, v4, :cond_4

    aget v4, p1, v3

    invoke-virtual {p3, v1, v4, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    move-result v4

    new-instance v5, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget v6, p1, v3

    invoke-virtual {p3, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v7

    const/high16 v8, 0x42700000    # 60.0f

    const-wide/16 v9, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;-><init>(FFFJ)V

    aput-object v5, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_6

    const-string v3, "AdaptiveBrightnessWeightStats - orig stats"

    invoke-static {v3, p2, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    move v3, v2

    :goto_4
    array-length v4, p1

    if-ge v3, v4, :cond_4

    aget v4, p1, v3

    invoke-virtual {p3, v1, v4, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(Ljava/lang/String;FI)F

    move-result v4

    aget-object v5, p2, v3

    invoke-virtual {p3, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    const-string v0, "AdaptiveBrightnessWeightStats - mStats"

    invoke-static {v0, p2, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-direct {v0, p1, p3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    new-instance p3, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-direct {p3, p1, v1, v0, p2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;-><init>([FLcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)V

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :goto_5
    iget-object p0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length p0, p0

    if-ge v2, p0, :cond_5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bucket boundaries and stats must be of same size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bucket boundaries must contain at least 1 value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBucketIndex(F[F)I
    .locals 6

    const/4 v0, 0x0

    aget v1, p1, v0

    cmpg-float v1, p0, v1

    if-ltz v1, :cond_7

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget v1, p1, v1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    goto :goto_3

    :cond_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    :goto_0
    if-ge v0, v1, :cond_4

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    aget v3, p1, v2

    cmpg-float v4, v3, p0

    if-gtz v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget v5, p1, v4

    cmpg-float v5, p0, v5

    if-gez v5, :cond_2

    move v0, v2

    move v1, v4

    goto :goto_1

    :cond_2
    cmpg-float v4, v3, p0

    if-gez v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_3
    cmpl-float v3, v3, p0

    if-lez v3, :cond_1

    move v1, v2

    goto :goto_0

    :cond_4
    :goto_1
    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v2, p0, v2

    if-gez v2, :cond_5

    aget v2, p1, v0

    sub-float v2, p0, v2

    aget p1, p1, v1

    sub-float/2addr p1, p0

    cmpg-float p0, v2, p1

    if-gtz p0, :cond_6

    goto :goto_2

    :cond_5
    aget v2, p1, v0

    div-float v2, p0, v2

    aget p1, p1, v1

    div-float/2addr p1, p0

    cmpg-float p0, v2, p1

    if-gtz p0, :cond_6

    :goto_2
    return v0

    :cond_6
    return v1

    :cond_7
    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method public static printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    move v3, p0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    aget v4, p2, v3

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%9d"

    const/4 v6, 0x1

    invoke-static {v5, v4, v1, v3, v6}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result v3

    goto :goto_0

    :cond_0
    array-length p2, p1

    :goto_1
    if-ge p0, p2, :cond_1

    aget-object v3, p1, p0

    const-string v4, "%9s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x1

    invoke-static {v4, v3, v2, p0, v5}, Lcom/android/server/TelephonyRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuilder;II)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdaptiveBrightnessWeightStats"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    iget-object v3, p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iget-object p1, p1, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getBucketBoundaries()[F
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    return-object p0
.end method

.method public getContinuityCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    return-object p0

    :cond_0
    const-string p0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v0, "mContinuityStatsCollector is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    return-object p0
.end method

.method public getTimeCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    .locals 1

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    return-object p0

    :cond_0
    const-string p0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v0, "mTimeStatsCollector is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public log(FFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Landroid/util/Spline;Z)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v6, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_0
    const-string/jumbo v9, "null"

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "log: l:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " b:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " t:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " u:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, ""

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AdaptiveBrightnessWeightStats"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v2, v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v10

    if-ltz v10, :cond_b

    const/4 v7, 0x0

    cmpl-float v7, v1, v7

    if-ltz v7, :cond_b

    if-eqz v4, :cond_b

    iget-object v7, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    iget-object v11, v7, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    invoke-static {v2, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v12

    aget v13, v11, v12

    const/high16 v14, 0x40200000    # 2.5f

    div-float v15, v13, v14

    const/high16 v16, 0x41200000    # 10.0f

    move/from16 v17, v14

    sub-float v14, v13, v16

    invoke-static {v15, v14}, Ljava/lang/Math;->min(FF)F

    move-result v14

    mul-float v15, v13, v17

    add-float v6, v13, v16

    invoke-static {v15, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v14, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v15

    move/from16 v16, v10

    array-length v10, v11

    add-int/lit8 v10, v10, -0x1

    const/4 v0, 0x0

    invoke-static {v15, v0, v10}, Landroid/util/MathUtils;->constrain(III)I

    move-result v10

    invoke-static {v6, v11}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v15

    array-length v5, v11

    add-int/lit8 v5, v5, -0x1

    invoke-static {v15, v0, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    aget v15, v11, v10

    cmpg-float v15, v15, v14

    if-gez v15, :cond_3

    array-length v15, v11

    add-int/lit8 v15, v15, -0x2

    if-gt v10, v15, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    aget v15, v11, v5

    cmpl-float v15, v15, v6

    if-lez v15, :cond_4

    if-lez v5, :cond_4

    add-int/lit8 v5, v5, -0x1

    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "updateTransientStats: "

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  b:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "s"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-gt v10, v5, :cond_a

    iget-object v0, v7, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v9, v7, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v9, :cond_9

    aget v15, v11, v10

    invoke-virtual {v9, v15, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessForSpline(FLandroid/util/Spline;)F

    move-result v3

    invoke-virtual {v9, v3}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v3

    if-ne v12, v10, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateTransientStats: b: "

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " ambientLux:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " currentBucketLux:"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " mBrightnessMapper: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v15, v14, v13, v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetDistributionRatio(FFFF)F

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v9, :cond_7

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, p2

    goto :goto_3

    :cond_7
    const/4 v15, -0x1

    :goto_4
    if-ltz v15, :cond_8

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    mul-float v1, p3, v4

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->updateWeight(F)V

    goto :goto_5

    :cond_8
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    mul-float v4, v4, p3

    invoke-direct {v1, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    goto/16 :goto_2

    :cond_a
    if-eqz p7, :cond_b

    if-eqz p5, :cond_b

    move-object/from16 v5, p5

    iget v3, v5, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    iget v0, v5, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    sub-float v4, v3, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iget-object v6, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object/from16 v5, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget-object v0, v0, v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setLastUserBrightnessTime(J)V

    :cond_b
    return-void
.end method

.method public setMaxWeight()V
    .locals 6

    const-string v0, "AdaptiveBrightnessWeightStats"

    const-string/jumbo v1, "setMaxWeight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v3

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v4

    const/high16 v5, 0x46e10000    # 28800.0f

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->set(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public summarizeStats()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    iget-object v1, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    array-length v5, v4

    const/4 v10, 0x0

    if-ge v3, v5, :cond_0

    aget-object v4, v4, v3

    invoke-virtual {v4, v10, v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBucketBoundaries:[F

    array-length v5, v3

    new-array v5, v5, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iget-object v6, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const-string v11, "AdaptiveBrightnessWeightStats"

    if-ge v8, v7, :cond_19

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v8, v8, 0x1

    check-cast v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    iget-object v13, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    iget v14, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x0

    const v17, 0x7f7fffff    # Float.MAX_VALUE

    move-object/from16 v18, v16

    const/4 v9, 0x0

    :goto_2
    const/high16 v19, 0x41200000    # 10.0f

    if-ge v9, v15, :cond_4

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    add-int/lit8 v9, v9, 0x1

    move/from16 v21, v10

    move-object/from16 v10, v20

    check-cast v10, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    move-object/from16 v20, v6

    iget v6, v10, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    move/from16 v22, v6

    iget v6, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLowerBoundary:F

    cmpg-float v6, v6, v22

    if-gtz v6, :cond_2

    iget v6, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mUpperBoundary:F

    cmpg-float v6, v22, v6

    if-gtz v6, :cond_2

    cmpg-float v6, v14, v19

    if-gez v6, :cond_1

    :goto_3
    move/from16 v22, v7

    goto :goto_5

    :cond_1
    div-float v6, v14, v22

    move/from16 v22, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v7, v6, v17

    if-gez v7, :cond_3

    move/from16 v17, v6

    move-object/from16 v18, v10

    goto :goto_4

    :cond_2
    move/from16 v22, v7

    :cond_3
    :goto_4
    move-object/from16 v6, v20

    move/from16 v10, v21

    move/from16 v7, v22

    goto :goto_2

    :cond_4
    move-object/from16 v20, v6

    move/from16 v21, v10

    move-object/from16 v10, v18

    goto :goto_3

    :goto_5
    iget v9, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    if-eqz v10, :cond_f

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v10, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    iget v15, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPreTimeDuration:F

    add-float v17, v14, v15

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/16 v23, 0x1

    iget v7, v10, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    float-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    float-to-int v15, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v6, v7, v14, v15}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, " cl:%.1f pl:%.1f t(%d + %d)"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    iget v7, v10, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    sub-float v14, v6, v7

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    cmpl-float v15, v6, v21

    if-lez v15, :cond_6

    cmpl-float v15, v7, v21

    if-lez v15, :cond_6

    cmpl-float v15, v6, v7

    if-lez v15, :cond_5

    div-float v15, v7, v6

    goto :goto_6

    :cond_5
    div-float v15, v6, v7

    :goto_6
    move/from16 v24, v7

    goto :goto_7

    :cond_6
    const/high16 v15, 0x7fc00000    # Float.NaN

    goto :goto_6

    :goto_7
    iget v7, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    cmpl-float v25, v7, v21

    iget v10, v10, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    if-lez v25, :cond_8

    cmpl-float v25, v10, v21

    if-lez v25, :cond_8

    cmpl-float v25, v7, v10

    if-lez v25, :cond_7

    div-float v25, v10, v7

    goto :goto_8

    :cond_7
    div-float v25, v7, v10

    goto :goto_8

    :cond_8
    const/high16 v25, 0x7fc00000    # Float.NaN

    :goto_8
    mul-float/2addr v7, v10

    cmpl-float v7, v7, v21

    if-lez v7, :cond_9

    move/from16 v7, v23

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    :goto_9
    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v7, :cond_b

    const/high16 v26, 0x42480000    # 50.0f

    cmpg-float v26, v14, v26

    if-ltz v26, :cond_a

    const v26, 0x3f19999a    # 0.6f

    cmpl-float v27, v15, v26

    if-gtz v27, :cond_a

    cmpl-float v26, v25, v26

    if-lez v26, :cond_b

    :cond_a
    move/from16 v26, v10

    goto :goto_a

    :cond_b
    move/from16 v26, v21

    :goto_a
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v28

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    float-to-int v7, v14

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    filled-new-array/range {v27 .. v32}, [Ljava/lang/Object;

    move-result-object v7

    const-string v14, " cb:%.1f pb:%.1f (%s,%d,%.2f,%.2f)"

    invoke-static {v14, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_c

    move/from16 v7, v21

    move/from16 v14, v26

    invoke-static {v14, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v15

    if-eqz v15, :cond_c

    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_c

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-eqz v15, :cond_d

    :cond_c
    move-object/from16 v17, v1

    goto :goto_c

    :cond_d
    cmpg-float v15, v7, v17

    if-gez v15, :cond_e

    const/high16 v7, 0x45610000    # 3600.0f

    cmpg-float v7, v17, v7

    if-gez v7, :cond_e

    const v7, -0x46ee5d4c

    mul-float v17, v17, v7

    add-float v7, v17, v10

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    :goto_b
    invoke-static {v9, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v10

    iget-object v15, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTotalStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget-object v10, v15, v10

    invoke-virtual {v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v10

    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v10, v15

    mul-float v15, v7, v14

    move-object/from16 v17, v1

    float-to-double v0, v15

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x46610000    # 14400.0f

    mul-float/2addr v0, v1

    invoke-static {v0, v10}, Ljava/lang/Math;->min(FF)F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "ContinuityCalculator.calculate(): mContinuity: "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " mLux: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " mBrightness: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " mSimilarity: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, " timeFactor: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :goto_c
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_d
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_10

    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    invoke-direct {v1, v6, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    goto :goto_e

    :cond_f
    move-object/from16 v17, v1

    const/16 v23, 0x1

    :cond_10
    move-object/from16 v1, v16

    :goto_e
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->valid()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {v9, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v0

    aget v6, v3, v0

    const/high16 v7, 0x40200000    # 2.5f

    div-float v10, v6, v7

    sub-float v13, v6, v19

    invoke-static {v10, v13}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float/2addr v7, v6

    add-float v13, v6, v19

    invoke-static {v7, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-static {v10, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v13

    array-length v14, v3

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    invoke-static {v13, v15, v14}, Landroid/util/MathUtils;->constrain(III)I

    move-result v13

    invoke-static {v7, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v14

    move/from16 v16, v8

    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-static {v14, v15, v8}, Landroid/util/MathUtils;->constrain(III)I

    move-result v8

    aget v14, v3, v13

    cmpg-float v14, v14, v10

    if-gez v14, :cond_11

    array-length v14, v3

    add-int/lit8 v14, v14, -0x2

    if-gt v13, v14, :cond_11

    add-int/lit8 v13, v13, 0x1

    :cond_11
    aget v14, v3, v8

    cmpl-float v14, v14, v7

    if-lez v14, :cond_12

    if-lez v8, :cond_12

    add-int/lit8 v8, v8, -0x1

    :cond_12
    :goto_f
    if-gt v13, v8, :cond_17

    iget-object v14, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v14, :cond_16

    aget v15, v3, v13

    move/from16 v19, v8

    iget-object v8, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    invoke-virtual {v14, v15, v8}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessForSpline(FLandroid/util/Spline;)F

    move-result v8

    invoke-virtual {v14, v8}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v8

    if-ne v0, v13, :cond_14

    new-instance v14, Ljava/lang/StringBuilder;

    move/from16 v23, v0

    const-string/jumbo v0, "distributeToBucketBoundaries: continuityStat: b: "

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    move-object/from16 v24, v12

    iget-object v12, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v12, :cond_13

    invoke-virtual {v12, v15, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessForSpline(FLandroid/util/Spline;)F

    move-result v0

    invoke-virtual {v12, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(F)F

    move-result v0

    goto :goto_10

    :cond_13
    const/high16 v0, 0x7fc00000    # Float.NaN

    :goto_10
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ambientLux:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " currentBucketLux:"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mBrightnessMapper: "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_14
    move/from16 v23, v0

    move-object/from16 v24, v12

    :goto_11
    invoke-static {v15, v10, v6, v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->-$$Nest$smgetDistributionRatio(FFFF)F

    move-result v0

    aget-object v12, v5, v13

    if-eqz v12, :cond_15

    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v12

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v14

    mul-float/2addr v14, v0

    add-float/2addr v14, v12

    aget-object v12, v5, v13

    invoke-virtual {v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v12

    aget-object v15, v5, v13

    invoke-virtual {v15}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v15

    mul-float/2addr v15, v12

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v12

    mul-float/2addr v12, v8

    mul-float/2addr v12, v0

    add-float/2addr v12, v15

    aget-object v0, v5, v13

    div-float/2addr v12, v14

    invoke-virtual {v0, v12, v14}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    goto :goto_12

    :cond_15
    new-instance v12, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v14

    mul-float/2addr v14, v0

    invoke-direct {v12, v8, v14}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;-><init>(FF)V

    aput-object v12, v5, v13

    goto :goto_12

    :cond_16
    move/from16 v23, v0

    move/from16 v19, v8

    move-object/from16 v24, v12

    :goto_12
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v19

    move/from16 v0, v23

    move-object/from16 v12, v24

    const/4 v15, 0x0

    goto/16 :goto_f

    :cond_17
    const-string/jumbo v0, "distributeToBucketBoundaries() rawContinuityStats: "

    invoke-static {v0, v5, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    goto :goto_13

    :cond_18
    move/from16 v16, v8

    :goto_13
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v8, v16

    move-object/from16 v1, v17

    move-object/from16 v6, v20

    move/from16 v7, v22

    goto/16 :goto_1

    :cond_19
    move-object/from16 v17, v1

    const/4 v0, 0x0

    :goto_14
    array-length v1, v4

    if-ge v0, v1, :cond_1b

    aget-object v1, v5, v0

    if-eqz v1, :cond_1a

    aget-object v6, v4, v0

    invoke-virtual {v1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v1

    aget-object v7, v5, v0

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v7

    invoke-virtual {v6, v1, v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->set(FF)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_1b
    iget-object v0, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v1, :cond_1c

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    iget v6, v5, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    invoke-static {v6, v3}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getBucketIndex(F[F)I

    move-result v7

    iget-object v8, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->summarize()V

    iget-object v8, v8, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTimeStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    aget-object v7, v8, v7

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v7

    iget v8, v5, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    add-float/2addr v8, v7

    iput v8, v5, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mPostTimeDuration:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "updateTimeDurationPrevUserBrightnessStats: lux: "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " timeDuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_1c
    iget-object v0, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v1, :cond_1d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v9, v3, 0x1

    check-cast v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;

    iget v3, v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mLux:F

    iget-object v6, v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mSpline:Landroid/util/Spline;

    iget-object v7, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    const/4 v8, 0x0

    iget v5, v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mBrightness:F

    iget v4, v4, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector$UserBrightnessStat;->mAdjustment:F

    move/from16 v33, v5

    move v5, v4

    move/from16 v4, v33

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->addUserBrightnessStat(FFFLandroid/util/Spline;Ljava/util/ArrayList;Z)V

    move v3, v9

    goto :goto_16

    :cond_1d
    const/4 v0, 0x0

    :goto_17
    iget-object v1, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1e

    const-string/jumbo v1, "addCurrentUserBrightnessStatsToPrevious: ["

    const-string/jumbo v3, "] "

    invoke-static {v0, v1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mPrevUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_1e
    iget-object v0, v2, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mCurrentUserBrightnessStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iget-object v1, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mContinuityStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    const-string/jumbo v3, "summarizeStats(): newTimeStats[]:"

    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    move-object/from16 v5, v17

    invoke-static {v3, v5, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    const-string/jumbo v3, "summarizeStats(): newContinuityStats[]:"

    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v3, v1, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    const-string/jumbo v3, "summarizeStats(): lastStats[]:"

    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-static {v3, v2, v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    const/4 v3, 0x0

    :goto_18
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v4, v4

    if-ge v3, v4, :cond_24

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v4

    aget-object v6, v5, v3

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v6

    add-float/2addr v6, v4

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1f

    const/4 v7, 0x0

    goto :goto_19

    :cond_1f
    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v4

    aget-object v7, v1, v3

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v7

    mul-float/2addr v7, v4

    aget-object v4, v5, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getBrightness()F

    move-result v4

    aget-object v8, v5, v3

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v8

    mul-float/2addr v8, v4

    add-float/2addr v8, v7

    div-float v7, v8, v6

    :goto_19
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v4

    aget-object v8, v2, v3

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v8

    const/high16 v9, 0x41f00000    # 30.0f

    sub-float v10, v8, v9

    add-float/2addr v9, v8

    invoke-static {v7, v10, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    const/high16 v9, 0x46e10000    # 28800.0f

    cmpl-float v10, v6, v9

    if-lez v10, :cond_20

    move v10, v9

    const/4 v9, 0x0

    goto :goto_1a

    :cond_20
    add-float v10, v4, v6

    cmpl-float v11, v10, v9

    if-lez v11, :cond_21

    sub-float v4, v9, v6

    move v10, v9

    :cond_21
    const/4 v9, 0x0

    invoke-static {v10, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v11

    if-nez v11, :cond_22

    move v7, v9

    goto :goto_1a

    :cond_22
    mul-float/2addr v8, v4

    mul-float/2addr v7, v6

    add-float/2addr v7, v8

    div-float/2addr v7, v10

    :goto_1a
    invoke-static {v10, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_23

    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    aget-object v4, v4, v3

    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    aget v6, v6, v3

    invoke-virtual {v4, v6, v7, v10}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->set(FFF)V

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_24
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    :goto_1b
    iget-object v2, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBucketBoundaries:[F

    array-length v2, v2

    if-ge v9, v2, :cond_25

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mTransientStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    :cond_25
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    const-string/jumbo v2, "summarizeStats(): mStats:"

    invoke-static {v2, v1, v0}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->printCurrentStats(Ljava/lang/String;[Ljava/lang/Object;[F)V

    return-void
.end method

.method public updateBrightnessMapper(Lcom/android/server/display/BrightnessMappingStrategy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mTimeStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;

    iput-object p1, v0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$TimeStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mContinuityStatsCollector:Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats$ContinuityStatsCollector;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mBucketBoundaries:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->mStats:[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
