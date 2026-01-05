.class public final Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mClientState:Lcom/android/server/inputmethod/ClientState;

.field public final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mFocusedWindowName:Ljava/lang/String;

.field public final mFocusedWindowSoftInputMode:I

.field public final mImeControlTargetName:Ljava/lang/String;

.field public final mImeSurfaceParentName:Ljava/lang/String;

.field public final mImeTargetNameFromWm:Ljava/lang/String;

.field public final mImeUserId:I

.field public final mInFullscreenMode:Z

.field public final mReason:I

.field public final mRequestWindowName:Ljava/lang/String;

.field public final mSequenceNumber:I

.field public final mTimestamp:J

.field public final mWallTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/ClientState;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/inputmethod/SoftInputShowHideHistory;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mSequenceNumber:I

    iput-object p1, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mClientState:Lcom/android/server/inputmethod/ClientState;

    iput-object p2, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object p3, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mFocusedWindowName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mFocusedWindowSoftInputMode:I

    iput p5, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mReason:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mWallTime:J

    iput-boolean p6, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mInFullscreenMode:Z

    iput-object p7, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mRequestWindowName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeControlTargetName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeTargetNameFromWm:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeSurfaceParentName:Ljava/lang/String;

    iput p11, p0, Lcom/android/server/inputmethod/SoftInputShowHideHistory$Entry;->mImeUserId:I

    return-void
.end method
