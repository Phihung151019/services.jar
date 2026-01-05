.class public final synthetic Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# instance fields
.field public final synthetic f$0:Lcom/android/server/infra/AbstractMasterSystemService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iput-object p2, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    iput p4, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final visit(Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/server/infra/AbstractMasterSystemService$$ExternalSyntheticLambda2;->f$3:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->handleServiceRemovedMultiModeLocked(ILandroid/content/ComponentName;)V

    :cond_2
    :goto_1
    return-void
.end method
