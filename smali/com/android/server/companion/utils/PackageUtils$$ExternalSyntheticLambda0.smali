.class public final synthetic Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/PackageManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/pm/PackageManager$PackageInfoFlags;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/PackageManager$PackageInfoFlags;

    iput p4, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;->f$2:Landroid/content/pm/PackageManager$PackageInfoFlags;

    iget p0, p0, Lcom/android/server/companion/utils/PackageUtils$$ExternalSyntheticLambda0;->f$3:I

    :try_start_0
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Package ["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "] is not found."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CDM_PackageUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
