.class final Lcom/htc/calendar/HtcUtils$3;
.super Ljava/lang/Object;
.source "HtcUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/HtcUtils;->doDismissEvent(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 1207
    iput-object p1, p0, Lcom/htc/calendar/HtcUtils$3;->val$mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1211
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/calendar/HtcUtils$3;->val$mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/calendar/DismissAllAlarmsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1212
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/calendar/HtcUtils$3;->val$mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1213
    return-void
.end method
