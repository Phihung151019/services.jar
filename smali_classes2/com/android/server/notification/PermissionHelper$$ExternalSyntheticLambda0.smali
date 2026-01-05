.class public final synthetic Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/uri/UriGrantsManagerInternal;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(ILandroid/net/Uri;Lcom/android/server/uri/UriGrantsManagerInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/uri/UriGrantsManagerInternal;

    iput p1, p0, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;->f$1:I

    iput-object p2, p0, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget v2, p0, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/notification/PermissionHelper$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p0, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v6

    move-object v1, v0

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    return-void
.end method
