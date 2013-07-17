.class Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "CalendarSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarSearchActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/CalendarSearchActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    .line 68
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 69
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 75
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/CalendarSearchActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 77
    const-string v2, "CalendarSearchActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete, cursor:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_1

    const-string v1, "isNull"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " token: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz p3, :cond_2

    .line 80
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 81
    .local v0, nCnt:I
    const-string v1, "CalendarSearchActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryComplete, count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-lez v0, :cond_0

    .line 83
    const/4 v1, -0x1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->move(I)Z

    .line 84
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #getter for: Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;
    invoke-static {v1}, Lcom/htc/calendar/CalendarSearchActivity;->access$000(Lcom/htc/calendar/CalendarSearchActivity;)Lcom/htc/calendar/EventListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/calendar/EventListView;->setVisibility(I)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #getter for: Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;
    invoke-static {v1}, Lcom/htc/calendar/CalendarSearchActivity;->access$000(Lcom/htc/calendar/CalendarSearchActivity;)Lcom/htc/calendar/EventListView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #getter for: Lcom/htc/calendar/CalendarSearchActivity;->mQueryString:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/CalendarSearchActivity;->access$100(Lcom/htc/calendar/CalendarSearchActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Lcom/htc/calendar/EventListView;->setCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #calls: Lcom/htc/calendar/CalendarSearchActivity;->goToToday()V
    invoke-static {v1}, Lcom/htc/calendar/CalendarSearchActivity;->access$200(Lcom/htc/calendar/CalendarSearchActivity;)V

    .line 94
    .end local v0           #nCnt:I
    :goto_1
    return-void

    .line 77
    :cond_1
    const-string v1, "not null"

    goto :goto_0

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #getter for: Lcom/htc/calendar/CalendarSearchActivity;->mListView:Lcom/htc/calendar/EventListView;
    invoke-static {v1}, Lcom/htc/calendar/CalendarSearchActivity;->access$000(Lcom/htc/calendar/CalendarSearchActivity;)Lcom/htc/calendar/EventListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/htc/calendar/EventListView;->setCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity$QueryHandler;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    #calls: Lcom/htc/calendar/CalendarSearchActivity;->dirtyCloseCursor(Landroid/database/Cursor;)V
    invoke-static {v1, p3}, Lcom/htc/calendar/CalendarSearchActivity;->access$300(Lcom/htc/calendar/CalendarSearchActivity;Landroid/database/Cursor;)V

    goto :goto_1
.end method
