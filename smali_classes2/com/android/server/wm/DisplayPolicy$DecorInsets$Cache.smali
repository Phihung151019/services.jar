.class public final Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mActive:Z

.field public final mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

.field public mPreserveId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayPolicy$DecorInsets;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayPolicy$DecorInsets$Cache;->mDecorInsets:Lcom/android/server/wm/DisplayPolicy$DecorInsets;

    return-void
.end method
