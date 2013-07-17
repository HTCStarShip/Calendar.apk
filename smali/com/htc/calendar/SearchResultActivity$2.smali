.class Lcom/htc/calendar/SearchResultActivity$2;
.super Landroid/database/ContentObserver;
.source "SearchResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/SearchResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/SearchResultActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/SearchResultActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/calendar/SearchResultActivity$2;->this$0:Lcom/htc/calendar/SearchResultActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity$2;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #calls: Lcom/htc/calendar/SearchResultActivity;->clearLastQueryTime()V
    invoke-static {v0}, Lcom/htc/calendar/SearchResultActivity;->access$300(Lcom/htc/calendar/SearchResultActivity;)V

    .line 143
    iget-object v0, p0, Lcom/htc/calendar/SearchResultActivity$2;->this$0:Lcom/htc/calendar/SearchResultActivity;

    #calls: Lcom/htc/calendar/SearchResultActivity;->renewCursor()V
    invoke-static {v0}, Lcom/htc/calendar/SearchResultActivity;->access$400(Lcom/htc/calendar/SearchResultActivity;)V

    .line 144
    return-void
.end method
