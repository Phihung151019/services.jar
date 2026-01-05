.class public final Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;


# direct methods
.method public constructor <init>(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    iget p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mSize:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorCount:I

    iget v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mIteratorIndex:I

    add-int/lit16 v0, v0, 0x190

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    rem-int/lit16 v0, v0, 0x190

    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->mValues:[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    aget-object p0, p0, v0

    return-object p0
.end method
