.class public final Lcom/android/server/vr/EnabledComponentsObserver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/EnabledComponentsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/EnabledComponentsObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public final onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method

.method public final onSomePackagesChanged()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->rebuildAll()V

    return-void
.end method
