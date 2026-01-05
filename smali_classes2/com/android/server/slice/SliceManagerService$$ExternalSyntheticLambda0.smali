.class public final synthetic Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/slice/SliceManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/SliceManagerService;II)V
    .locals 0

    iput p3, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/slice/SliceManagerService;

    iput p2, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/slice/SliceManagerService;

    iget p0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$1:I

    sget v1, Lcom/android/server/slice/SliceManagerService;->$r8$clinit:I

    invoke-virtual {v0, p0}, Lcom/android/server/slice/SliceManagerService;->getDefaultHome(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/slice/SliceManagerService;

    iget p0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda0;->f$1:I

    iget-object v0, v0, Lcom/android/server/slice/SliceManagerService;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
