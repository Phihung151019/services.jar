.class public final synthetic Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    iput p2, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;

    iget v1, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/android/server/pm/UserVisibilityMediator$$ExternalSyntheticLambda0;->f$2:Z

    sget-boolean v2, Lcom/android/server/pm/UserVisibilityMediator;->DBG:Z

    invoke-interface {v0, v1, p0}, Lcom/android/server/pm/UserManagerInternal$UserVisibilityListener;->onUserVisibilityChanged(IZ)V

    return-void
.end method
