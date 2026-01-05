.class public final synthetic Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticLambda2;->$r8$classId:I

    check-cast p1, Landroid/content/ComponentName$WithComponentName;

    packed-switch p0, :pswitch_data_0

    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$TcIjTY4VzQMPUYS5zFhsMGEkcOE(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$4cnnwLcrRIvopnI2Y9UMN0-4LXk(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformNonCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0

    :pswitch_2
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformCriticalPackage(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isNonPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->isPlatformPackage(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0

    :pswitch_5
    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_6
    invoke-static {p1}, Lcom/android/internal/util/jobs/DumpUtils;->$r8$lambda$FG505HlyvajkfrO9xmitenM2Nv8(Landroid/content/ComponentName$WithComponentName;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
