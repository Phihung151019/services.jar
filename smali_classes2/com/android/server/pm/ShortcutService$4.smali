.class public final Lcom/android/server/pm/ShortcutService$4;
.super Landroid/app/UidObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUidGone(IZ)V
    .locals 1

    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v0, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/ShortcutService$4;I)V

    invoke-virtual {p2, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onUidStateChanged(IIJI)V
    .locals 0

    iget-object p3, p0, Lcom/android/server/pm/ShortcutService$4;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance p4, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2}, Lcom/android/server/pm/ShortcutService$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService$4;II)V

    invoke-virtual {p3, p4}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    return-void
.end method
