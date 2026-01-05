.class public final Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mHandwritingChannel:Landroid/view/InputChannel;

.field public final mRecordedEvents:Ljava/util/List;

.field public final mRequestId:I


# direct methods
.method public constructor <init>(ILandroid/view/InputChannel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;

    return-void
.end method
