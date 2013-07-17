.class final Lcom/htc/calendar/HtcUtils$2;
.super Ljava/lang/Object;
.source "HtcUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/HtcUtils;->StartActvity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$event_id:Ljava/lang/Long;

.field final synthetic val$eventbegin:Ljava/lang/Long;

.field final synthetic val$eventend:Ljava/lang/Long;

.field final synthetic val$iCalGUID:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1092
    iput-object p1, p0, Lcom/htc/calendar/HtcUtils$2;->val$c:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/calendar/HtcUtils$2;->val$event_id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/htc/calendar/HtcUtils$2;->val$iCalGUID:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/calendar/HtcUtils$2;->val$eventbegin:Ljava/lang/Long;

    iput-object p5, p0, Lcom/htc/calendar/HtcUtils$2;->val$eventend:Ljava/lang/Long;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/htc/calendar/HtcUtils$2;->val$c:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/calendar/HtcUtils$2;->val$event_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/htc/calendar/HtcUtils$2;->val$iCalGUID:Ljava/lang/String;

    iget-object v3, p0, Lcom/htc/calendar/HtcUtils$2;->val$eventbegin:Ljava/lang/Long;

    iget-object v4, p0, Lcom/htc/calendar/HtcUtils$2;->val$eventend:Ljava/lang/Long;

    #calls: Lcom/htc/calendar/HtcUtils;->blockingCheckInviteEvent(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/calendar/HtcUtils;->access$000(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z

    .line 1095
    return-void
.end method
