.class public final Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mIteratorCount:I

.field public mIteratorIndex:I

.field public mLastIndex:I

.field public final mReverseIterator:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

.field public mSize:I

.field public final mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mLastIndex:I

    new-instance v0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;-><init>(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)V

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mReverseIterator:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;

    const/16 v0, 0x190

    new-array v0, v0, [Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    iput-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    return-void
.end method
