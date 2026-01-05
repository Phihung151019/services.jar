.class public final Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIntent:Landroid/content/Intent;

.field public final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mIntent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$StartActivityRunnable;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
