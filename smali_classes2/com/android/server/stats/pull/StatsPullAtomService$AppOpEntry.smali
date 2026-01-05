.class public final Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAttributionTag:Ljava/lang/String;

.field public final mHash:I

.field public final mOp:Landroid/app/AppOpsManager$HistoricalOp;

.field public final mPackageName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mAttributionTag:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mUid:I

    iput-object p3, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mOp:Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sget p2, Lcom/android/server/stats/pull/StatsPullAtomService;->RANDOM_SEED:I

    add-int/2addr p1, p2

    const p2, 0x7fffffff

    and-int/2addr p1, p2

    rem-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$AppOpEntry;->mHash:I

    return-void
.end method
