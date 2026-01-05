.class public final synthetic Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;->f$2:Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;->f$0:I

    iget-object p0, p0, Lcom/android/server/pm/ShortcutUser$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    iget v1, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageUserId:I

    if-ne v1, v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/ShortcutPackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    :cond_0
    return-void
.end method
