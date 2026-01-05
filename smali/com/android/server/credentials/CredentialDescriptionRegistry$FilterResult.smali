.class public final Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCredentialEntries:Ljava/util/List;

.field public final mElementKeys:Ljava/util/Set;

.field public final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mElementKeys:Ljava/util/Set;

    iput-object p3, p0, Lcom/android/server/credentials/CredentialDescriptionRegistry$FilterResult;->mCredentialEntries:Ljava/util/List;

    return-void
.end method
