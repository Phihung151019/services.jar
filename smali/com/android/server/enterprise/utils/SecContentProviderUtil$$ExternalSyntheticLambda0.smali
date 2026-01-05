.class public final synthetic Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iput p3, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$1:Landroid/net/Uri;

    iget p0, p0, Lcom/android/server/enterprise/utils/SecContentProviderUtil$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    return-void
.end method
