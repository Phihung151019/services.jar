.class public interface abstract Lcom/android/server/companion/association/AssociationStore$OnChangeListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .locals 0

    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationRemoved(Landroid/companion/AssociationInfo;)V

    return-void

    :cond_1
    invoke-interface {p0, p2}, Lcom/android/server/companion/association/AssociationStore$OnChangeListener;->onAssociationAdded(Landroid/companion/AssociationInfo;)V

    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .locals 0

    return-void
.end method
