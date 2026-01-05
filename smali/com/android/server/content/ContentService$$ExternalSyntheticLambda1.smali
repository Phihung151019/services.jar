.class public final synthetic Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/ContentService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/ContentService;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/content/ContentService;

    iput p2, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/content/ContentService;

    iget v1, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$1:I

    iget p0, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda1;->f$2:I

    check-cast p1, Landroid/content/SyncInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/content/ContentService;->hasAuthorityAccess(IILjava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
