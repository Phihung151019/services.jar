.class public final synthetic Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Landroid/net/LinkAddress;I)V
    .locals 0

    iput p2, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->f$0:Landroid/net/LinkAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticLambda1;->f$0:Landroid/net/LinkAddress;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/net/LinkAddress;

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$hXTWt6UzxsyVBxaxeD9FOBlh3MI(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroid/net/IpPrefix;

    invoke-static {p0, p1}, Landroid/net/shared/InitialConfiguration;->$r8$lambda$LrgLnWopeQsqj9tKhvCHfzT_ECg(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
