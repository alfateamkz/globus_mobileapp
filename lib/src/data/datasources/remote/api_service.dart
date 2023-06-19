import 'package:dio/dio.dart' hide Headers;
import 'package:globus/src/config/constants/app_constants.dart';
import 'package:globus/src/domain/models/responses/activities_response.dart';
import 'package:globus/src/domain/models/responses/discussion_response.dart';

import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: kHostUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  ////////////////////   AUTH    ////////////////////////////////////
  // @POST('/api/v1/user')
  // @Headers({"Content-Type": "application/json"})
  // Future<HttpResponse<AuthResponse>> userLogin(@Body() AuthRequest request);


  // @PUT('/api/v1/user/profile/{id}')
  // @Headers({"Content-Type": "application/json"})
  // Future<HttpResponse<Profile>> profileEdit(
  //   @Path('id') String id,
  //   @Body() ProfileEditRequest request
  // );

  // ////////////////////   PRROFILE    ////////////////////////////////////
  // @GET('/api/v1/user/{id}')
  // Future<HttpResponse<ProfileResponse>> getProfile({
  //   @Path('id') required String id,
  // });

  @GET('/api/activity')
  Future<HttpResponse<ActivitiesResponse>> getActivities();


  @GET('/api/discussion')
  Future<HttpResponse<DiscussionsResponse>> getDiscussions();





}
