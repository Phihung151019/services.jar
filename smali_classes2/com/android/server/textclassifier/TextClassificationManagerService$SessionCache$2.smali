.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;
.super Landroid/util/LruCache;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    check-cast p4, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$2;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;

    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipient:Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$1;

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method
