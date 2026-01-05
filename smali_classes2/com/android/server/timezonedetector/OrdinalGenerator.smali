.class public final Lcom/android/server/timezonedetector/OrdinalGenerator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCanonicalizationFunction:Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;

.field public final mKnownIds:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mKnownIds:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mCanonicalizationFunction:Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;

    return-void
.end method


# virtual methods
.method public final ordinal(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mCanonicalizationFunction:Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mKnownIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mKnownIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/timezonedetector/OrdinalGenerator;->mKnownIds:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method
