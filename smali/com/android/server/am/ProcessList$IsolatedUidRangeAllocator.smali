.class public final Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppRanges:Lcom/android/internal/app/ProcessMap;

.field public final mAvailableUidRanges:Ljava/util/BitSet;

.field public final mFirstUid:I

.field public final mNumUidsPerRange:I

.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->this$0:Lcom/android/server/am/ProcessList;

    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    const p1, 0x15f90

    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    new-instance p1, Ljava/util/BitSet;

    const/16 v0, 0x5a

    invoke-direct {p1, v0}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/util/BitSet;->set(II)V

    return-void
.end method
