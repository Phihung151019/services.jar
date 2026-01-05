.class public final Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sPool:Landroid/util/Pools$SimplePool;


# instance fields
.field public dispatchTime:J

.field public event:Landroid/view/KeyEvent;

.field public policyFlags:I

.field public previous:Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SimplePool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Lcom/android/server/accessibility/KeyboardInterceptor$KeyEventHolder;->sPool:Landroid/util/Pools$SimplePool;

    return-void
.end method
