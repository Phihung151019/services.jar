.class public final Lcom/android/server/policy/BixbyService$Params;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public doublePress:Z

.field public final event:Landroid/view/KeyEvent;

.field public final interactive:Z

.field public isPowerCombination:Z

.field public longPress:Z

.field public showToast:Z


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    iput-boolean v0, p0, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    iput-object p1, p0, Lcom/android/server/policy/BixbyService$Params;->event:Landroid/view/KeyEvent;

    iput-boolean p2, p0, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/BixbyService$Params;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/policy/BixbyService$Params;->event:Landroid/view/KeyEvent;

    iget-boolean v1, p1, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    iget-boolean v2, p1, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    iget-boolean v3, p1, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    iget-boolean v4, p1, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BixbyService$Params;->event:Landroid/view/KeyEvent;

    iget-boolean p1, p1, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    iput-boolean p1, p0, Lcom/android/server/policy/BixbyService$Params;->interactive:Z

    iput-boolean v1, p0, Lcom/android/server/policy/BixbyService$Params;->showToast:Z

    iput-boolean v2, p0, Lcom/android/server/policy/BixbyService$Params;->longPress:Z

    iput-boolean v3, p0, Lcom/android/server/policy/BixbyService$Params;->doublePress:Z

    iput-boolean v4, p0, Lcom/android/server/policy/BixbyService$Params;->isPowerCombination:Z

    return-void
.end method
