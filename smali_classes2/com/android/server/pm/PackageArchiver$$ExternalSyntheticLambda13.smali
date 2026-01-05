.class public final synthetic Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageArchiver;

.field public final synthetic f$1:Landroid/content/IntentSender;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageArchiver;Landroid/content/IntentSender;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/PackageArchiver;

    iput-object p2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;->f$1:Landroid/content/IntentSender;

    iput-object p3, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;->f$3:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/PackageArchiver;

    iget-object v1, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;->f$1:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/pm/PackageArchiver$$ExternalSyntheticLambda13;->f$3:Landroid/content/Intent;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/pm/PackageArchiver;->sendIntent(Landroid/content/IntentSender;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method
