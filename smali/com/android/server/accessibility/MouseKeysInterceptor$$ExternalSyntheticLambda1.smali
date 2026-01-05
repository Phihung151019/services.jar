.class public final synthetic Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;

.field public final synthetic f$1:Landroid/view/KeyEvent;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;

    iput-object p2, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent;

    iput p3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/MouseKeysInterceptor;

    iget-object v1, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;->f$1:Landroid/view/KeyEvent;

    iget p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/server/accessibility/MouseKeysInterceptor;->$r8$lambda$bmlvUec6jxm8e9vAdANaoGIFYyk(Lcom/android/server/accessibility/MouseKeysInterceptor;Landroid/view/KeyEvent;I)V

    return-void
.end method
