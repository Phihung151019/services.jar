.class public final Lcom/android/server/am/ProcessList$IsolatedUidRange;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFirstUid:I

.field public final mLastUid:I

.field public mNextUid:I

.field public final mUidUsed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mUidUsed:Landroid/util/SparseBooleanArray;

    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mNextUid:I

    return-void
.end method
