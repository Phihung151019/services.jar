.class public final synthetic Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;

    return-void
.end method


# virtual methods
.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "android.app.role.WALLET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->getPaymentDefaultPackageFromRoleManager()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/mars/filter/filter/NFCPackageFilter;->setPaymentDefaultPackage(Ljava/lang/String;)V

    return-void
.end method
