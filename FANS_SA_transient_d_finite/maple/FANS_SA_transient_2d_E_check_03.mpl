# 
restart;
#Q3 ------------------------------------------------------------------------------------
Q3 := ((4/3)*a_ux^2*u_x*sin(a_ux*Pi*x/L)+a_uy^2*u_y*cos(a_uy*Pi*y/L))*f_v1*Pi^2*RHO*U*NU_SA/L^2+(a_vx^2*v_x*cos(a_vx*Pi*x/L)+(4/3)*a_vy^2*v_y*sin(a_vy*Pi*y/L))*f_v1*Pi^2*RHO*V*NU_SA/L^2+((4/3)*a_ux*a_nusax*u_x*nu_sa_x*cos(a_ux*Pi*x/L)*sin(a_nusax*Pi*x/L)-a_uy*a_nusay*u_y*nu_sa_y*sin(a_uy*Pi*y/L)*sin(a_nusay*Pi*y/L)-a_vx*a_nusay*v_x*nu_sa_y*sin(a_vx*Pi*x/L)*sin(a_nusay*Pi*y/L)-(2/3)*a_vy*a_nusax*v_y*nu_sa_x*cos(a_vy*Pi*y/L)*sin(a_nusax*Pi*x/L))*f_v1*Pi^2*RHO*U/L^2+(-(2/3)*a_ux*a_nusay*u_x*nu_sa_y*cos(a_ux*Pi*x/L)*sin(a_nusay*Pi*y/L)-a_uy*a_nusax*u_y*nu_sa_x*sin(a_uy*Pi*y/L)*sin(a_nusax*Pi*x/L)-a_vx*a_nusax*v_x*nu_sa_x*sin(a_vx*Pi*x/L)*sin(a_nusax*Pi*x/L)+(4/3)*a_vy*a_nusay*v_y*nu_sa_y*cos(a_vy*Pi*y/L)*sin(a_nusay*Pi*y/L))*f_v1*Pi^2*RHO*V/L^2+(-(4/3)*a_ux^2*u_x^2*cos(a_ux*Pi*x/L)^2+(4/3)*a_ux*a_vy*u_x*v_y*cos(a_ux*Pi*x/L)*cos(a_vy*Pi*y/L)-a_uy^2*u_y^2*sin(a_uy*Pi*y/L)^2-2*a_uy*a_vx*u_y*v_x*sin(a_uy*Pi*y/L)*sin(a_vx*Pi*x/L)-a_vx^2*v_x^2*sin(a_vx*Pi*x/L)^2-(4/3)*a_vy^2*v_y^2*cos(a_vy*Pi*y/L)^2)*f_v1*Pi^2*RHO*NU_SA/L^2+(-(4/3)*a_rhox*a_ux*rho_x*u_x*cos(a_rhox*Pi*x/L)*cos(a_ux*Pi*x/L)+(2/3)*a_rhox*a_vy*rho_x*v_y*cos(a_rhox*Pi*x/L)*cos(a_vy*Pi*y/L)-a_rhoy*a_uy*rho_y*u_y*sin(a_rhoy*Pi*y/L)*sin(a_uy*Pi*y/L)-a_rhoy*a_vx*rho_y*v_x*sin(a_rhoy*Pi*y/L)*sin(a_vx*Pi*x/L))*f_v1*Pi^2*U*NU_SA/L^2+(1/3)*(c_v1^3/(chi^3+c_v1^3)+f_v1)*(4*a_ux^2*u_x*sin(a_ux*Pi*x/L)+3*a_uy^2*u_y*cos(a_uy*Pi*y/L))*Pi^2*U*mu/L^2+(a_rhox*a_uy*rho_x*u_y*cos(a_rhox*Pi*x/L)*sin(a_uy*Pi*y/L)+a_rhox*a_vx*rho_x*v_x*cos(a_rhox*Pi*x/L)*sin(a_vx*Pi*x/L)-(2/3)*a_rhoy*a_ux*rho_y*u_x*sin(a_rhoy*Pi*y/L)*cos(a_ux*Pi*x/L)+(4/3)*a_rhoy*a_vy*rho_y*v_y*sin(a_rhoy*Pi*y/L)*cos(a_vy*Pi*y/L))*f_v1*Pi^2*V*NU_SA/L^2+(1/3)*(c_v1^3/(chi^3+c_v1^3)+f_v1)*(3*a_vx^2*v_x*cos(a_vx*Pi*x/L)+4*a_vy^2*v_y*sin(a_vy*Pi*y/L))*Pi^2*V*mu/L^2-(1/3)*(4*a_ux^2*u_x^2*cos(a_ux*Pi*x/L)^2-4*a_ux*a_vy*u_x*v_y*cos(a_ux*Pi*x/L)*cos(a_vy*Pi*y/L)+3*a_uy^2*u_y^2*sin(a_uy*Pi*y/L)^2+6*a_uy*a_vx*u_y*v_x*sin(a_uy*Pi*y/L)*sin(a_vx*Pi*x/L)+3*a_vx^2*v_x^2*sin(a_vx*Pi*x/L)^2+4*a_vy^2*v_y^2*cos(a_vy*Pi*y/L)^2)*c_v1^3*Pi^2*mu/(L^2*(chi^3+c_v1^3))-(1/3)*(4*a_ux^2*u_x^2*cos(a_ux*Pi*x/L)^2-4*a_ux*a_vy*u_x*v_y*cos(a_ux*Pi*x/L)*cos(a_vy*Pi*y/L)+3*a_uy^2*u_y^2*sin(a_uy*Pi*y/L)^2+6*a_uy*a_vx*u_y*v_x*sin(a_uy*Pi*y/L)*sin(a_vx*Pi*x/L)+3*a_vx^2*v_x^2*sin(a_vx*Pi*x/L)^2+4*a_vy^2*v_y^2*cos(a_vy*Pi*y/L)^2)*f_v1*Pi^2*mu/L^2;
B := subs(mu_t = f_v1*NU_SA*RHO, Q3);
B := subs(f_v1 = chi^3/(chi^3+c_v1^3), B);
B := subs(chi = RHO*NU_SA/mu, B);
B := subs(NU_SA = nu_sa_0+nu_sa_x*cos(a_nusax*Pi*x/L)+nu_sa_y*cos(a_nusay*Pi*y/L)+nu_sa_t*cos(a_nusat*Pi*t/L), B);
B := subs(RHO = rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L), B);
B := subs(U = u_0+u_x*sin(a_ux*Pi*x/L)+u_y*cos(a_uy*Pi*y/L)+u_t*cos(a_ut*Pi*t/L), B);
B := subs(V = v_0+v_x*cos(a_vx*Pi*x/L)+v_y*sin(a_vy*Pi*y/L)+v_t*sin(a_vt*Pi*t/L), B);
Q_3 := subs(P = p_0+p_x*cos(a_px*Pi*x/L)+p_y*sin(a_py*Pi*y/L)+p_t*cos(a_pt*Pi*t/L), B);
#Original Q3 ------------------------------------------------------------------------------------
Q3n := (-2*c_v1^3*mu^4-2*rho_0^4*nu_sa_0^4-8*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*(nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+(1/4)*mu+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_0*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0)*nu_sa_x^3*cos(a_nusax*Pi*x/L)^3-8*nu_sa_0^3*rho_t^3*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+(1/4)*mu+rho_0*nu_sa_0)*sin(a_rhot*Pi*t/L)^3-8*rho_x^3*nu_sa_0^3*((1/4)*mu+rho_0*nu_sa_0)*sin(a_rhox*Pi*x/L)^3-8*nu_sa_0^3*rho_y^3*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+(1/4)*mu+rho_0*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0)*cos(a_rhoy*Pi*y/L)^3-8*nu_sa_y^3*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+(1/4)*mu+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_0*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0)*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*cos(a_nusay*Pi*y/L)^3-2*nu_sa_x^4*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^4*cos(a_nusax*Pi*x/L)^4-2*rho_t^4*sin(a_rhot*Pi*t/L)^4*nu_sa_0^4-8*(rho_x*sin(a_rhox*Pi*x/L)+rho_t*sin(a_rhot*Pi*t/L)+rho_0)^2*nu_sa_0^3*rho_y*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+(3/4)*mu)*cos(a_rhoy*Pi*y/L)-12*nu_sa_0^3*rho_t^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L))*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+(1/2)*mu)*sin(a_rhot*Pi*t/L)^2-12*rho_x^2*rho_0*(rho_0*nu_sa_0+(1/2)*mu)*nu_sa_0^3*sin(a_rhox*Pi*x/L)^2-8*rho_x*rho_0^2*nu_sa_0^3*(rho_0*nu_sa_0+(3/4)*mu)*sin(a_rhox*Pi*x/L)-12*nu_sa_y^2*nu_sa_0*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+(1/2)*mu)*cos(a_nusay*Pi*y/L)^2-12*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*nu_sa_x^2*(nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+(1/2)*mu)*(nu_sa_0+nu_sa_y*cos(a_nusay*Pi*y/L))*cos(a_nusax*Pi*x/L)^2-8*nu_sa_y*nu_sa_0^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+(3/4)*mu)*cos(a_nusay*Pi*y/L)-(8*(nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+(3/4)*mu))*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*nu_sa_x*(nu_sa_0+nu_sa_y*cos(a_nusay*Pi*y/L))^2*cos(a_nusax*Pi*x/L)-2*nu_sa_y^4*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^4*cos(a_nusay*Pi*y/L)^4-2*rho_x^4*sin(a_rhox*Pi*x/L)^4*nu_sa_0^4-2*rho_y^4*cos(a_rhoy*Pi*y/L)^4*nu_sa_0^4-(8*(nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+(3/4)*mu))*(nu_sa_x*cos(a_nusax*Pi*x/L)+nu_sa_0+nu_sa_y*cos(a_nusay*Pi*y/L))^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*nu_sa_t*cos(a_nusat*Pi*t/L)-(12*(nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+(1/2)*mu))*(nu_sa_x*cos(a_nusax*Pi*x/L)+nu_sa_0+nu_sa_y*cos(a_nusay*Pi*y/L))*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*nu_sa_t^2*cos(a_nusat*Pi*t/L)^2-(12*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+(1/2)*mu))*(rho_x*sin(a_rhox*Pi*x/L)+rho_t*sin(a_rhot*Pi*t/L)+rho_0)*nu_sa_0^3*rho_y^2*cos(a_rhoy*Pi*y/L)^2-(8*(rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0+(3/4)*mu))*nu_sa_0^3*rho_t*(rho_0+rho_x*sin(a_rhox*Pi*x/L))^2*sin(a_rhot*Pi*t/L)-2*mu*rho_0^3*nu_sa_0^3-(8*(nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+(1/4)*mu+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_0*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0))*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*nu_sa_t^3*cos(a_nusat*Pi*t/L)^3-2*nu_sa_t^4*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^4*cos(a_nusat*Pi*t/L)^4)*(-(1/2)*Pi^2*(v_x^2*cos(a_vx*Pi*x/L)^2*a_vx^2+v_x*a_vx^2*(v_y*sin(a_vy*Pi*y/L)+v_t*sin(a_vt*Pi*t/L)+v_0)*cos(a_vx*Pi*x/L)+(4/3)*u_x^2*sin(a_ux*Pi*x/L)^2*a_ux^2+(4/3)*a_ux^2*u_x*(u_y*cos(a_uy*Pi*y/L)+u_t*cos(a_ut*Pi*t/L)+u_0)*sin(a_ux*Pi*x/L)-v_x^2*sin(a_vx*Pi*x/L)^2*a_vx^2-(4/3)*u_x^2*cos(a_ux*Pi*x/L)^2*a_ux^2+(2/3)*u_x*cos(a_ux*Pi*x/L)*a_ux*v_y*cos(a_vy*Pi*y/L)*a_vy-v_x*sin(a_vx*Pi*x/L)*a_vx*u_y*sin(a_uy*Pi*y/L)*a_uy)/L^2-(2/3)*((3/4)*u_y^2*cos(a_uy*Pi*y/L)^2*a_uy^2+(3/4)*a_uy^2*u_y*(u_x*sin(a_ux*Pi*x/L)+u_t*cos(a_ut*Pi*t/L)+u_0)*cos(a_uy*Pi*y/L)+v_y^2*sin(a_vy*Pi*y/L)^2*a_vy^2+v_y*a_vy^2*(v_t*sin(a_vt*Pi*t/L)+v_0+v_x*cos(a_vx*Pi*x/L))*sin(a_vy*Pi*y/L)-v_y^2*cos(a_vy*Pi*y/L)^2*a_vy^2+(1/2)*u_x*cos(a_ux*Pi*x/L)*a_ux*v_y*cos(a_vy*Pi*y/L)*a_vy-(3/4)*a_uy*sin(a_uy*Pi*y/L)*u_y*(v_x*sin(a_vx*Pi*x/L)*a_vx+a_uy*sin(a_uy*Pi*y/L)*u_y))*Pi^2/L^2)/((nu_sa_t*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusat*Pi*t/L)+nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_0*nu_sa_0+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+c_v1*mu)*(nu_sa_t^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusat*Pi*t/L)^2+(2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L)))*(nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)-(1/2)*c_v1*mu+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+rho_0*nu_sa_0)*nu_sa_t*cos(a_nusat*Pi*t/L)+nu_sa_x^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusax*Pi*x/L)^2+(2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L)))*nu_sa_x*(nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)-(1/2)*c_v1*mu+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+rho_0*nu_sa_0)*cos(a_nusax*Pi*x/L)+nu_sa_y^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusay*Pi*y/L)^2+2*nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*(-(1/2)*c_v1*mu+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+rho_0*nu_sa_0)*cos(a_nusay*Pi*y/L)+rho_y^2*nu_sa_0^2*cos(a_rhoy*Pi*y/L)^2+(2*(-(1/2)*c_v1*mu+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+rho_0*nu_sa_0))*nu_sa_0*rho_y*cos(a_rhoy*Pi*y/L)+nu_sa_0^2*rho_t^2*sin(a_rhot*Pi*t/L)^2+(2*(-(1/2)*c_v1*mu+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_0*nu_sa_0))*nu_sa_0*rho_t*sin(a_rhot*Pi*t/L)+rho_x^2*nu_sa_0^2*sin(a_rhox*Pi*x/L)^2+2*rho_x*nu_sa_0*(-(1/2)*c_v1*mu+rho_0*nu_sa_0)*sin(a_rhox*Pi*x/L)-nu_sa_0*mu*c_v1*rho_0+c_v1^2*mu^2+nu_sa_0^2*rho_0^2))-Pi^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*(-rho_x*cos(a_rhox*Pi*x/L)*a_rhox*nu_sa_t*cos(a_nusat*Pi*t/L)+nu_sa_x*sin(a_nusax*Pi*x/L)*a_nusax*rho_t*sin(a_rhot*Pi*t/L)-rho_x*cos(a_rhox*Pi*x/L)*a_rhox*nu_sa_0-rho_x*cos(a_rhox*Pi*x/L)*a_rhox*nu_sa_x*cos(a_nusax*Pi*x/L)+nu_sa_x*sin(a_nusax*Pi*x/L)*a_nusax*rho_0+nu_sa_x*sin(a_nusax*Pi*x/L)*a_nusax*rho_x*sin(a_rhox*Pi*x/L)+nu_sa_x*sin(a_nusax*Pi*x/L)*a_nusax*rho_y*cos(a_rhoy*Pi*y/L)-rho_x*cos(a_rhox*Pi*x/L)*a_rhox*nu_sa_y*cos(a_nusay*Pi*y/L))*(-(4/3)*u_x*a_ux*(u_0+u_x*sin(a_ux*Pi*x/L)+u_y*cos(a_uy*Pi*y/L)+u_t*cos(a_ut*Pi*t/L))*cos(a_ux*Pi*x/L)+(2/3)*v_y*a_vy*(u_0+u_x*sin(a_ux*Pi*x/L)+u_y*cos(a_uy*Pi*y/L)+u_t*cos(a_ut*Pi*t/L))*cos(a_vy*Pi*y/L)+(v_0+v_x*cos(a_vx*Pi*x/L)+v_y*sin(a_vy*Pi*y/L)+v_t*sin(a_vt*Pi*t/L))*(v_x*sin(a_vx*Pi*x/L)*a_vx+a_uy*sin(a_uy*Pi*y/L)*u_y))*(nu_sa_0+nu_sa_x*cos(a_nusax*Pi*x/L)+nu_sa_y*cos(a_nusay*Pi*y/L)+nu_sa_t*cos(a_nusat*Pi*t/L))^3/(L^2*(nu_sa_t*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusat*Pi*t/L)+nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_0*nu_sa_0+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+c_v1*mu)*(nu_sa_t^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusat*Pi*t/L)^2-(-2*nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)-2*nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)-2*rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0-2*rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+c_v1*mu)*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*nu_sa_t*cos(a_nusat*Pi*t/L)+nu_sa_x^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusax*Pi*x/L)^2-(-2*nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)-2*rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0-2*rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+c_v1*mu)*nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusay*Pi*y/L)^2-nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*(-2*rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0-2*rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+c_v1*mu)*cos(a_nusay*Pi*y/L)+rho_y^2*nu_sa_0^2*cos(a_rhoy*Pi*y/L)^2-nu_sa_0*rho_y*(-2*rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0+c_v1*mu)*cos(a_rhoy*Pi*y/L)+nu_sa_0^2*rho_t^2*sin(a_rhot*Pi*t/L)^2-nu_sa_0*rho_t*(-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0+c_v1*mu)*sin(a_rhot*Pi*t/L)+rho_x^2*nu_sa_0^2*sin(a_rhox*Pi*x/L)^2-rho_x*nu_sa_0*(-2*rho_0*nu_sa_0+c_v1*mu)*sin(a_rhox*Pi*x/L)+c_v1^2*mu^2-nu_sa_0*mu*c_v1*rho_0+nu_sa_0^2*rho_0^2))-(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^3*Pi^2*(nu_sa_0+nu_sa_x*cos(a_nusax*Pi*x/L)+nu_sa_y*cos(a_nusay*Pi*y/L)+nu_sa_t*cos(a_nusat*Pi*t/L))^3*((2/3)*u_x*a_ux*(v_0+v_x*cos(a_vx*Pi*x/L)+v_y*sin(a_vy*Pi*y/L)+v_t*sin(a_vt*Pi*t/L))*cos(a_ux*Pi*x/L)-(4/3)*v_y*a_vy*(v_0+v_x*cos(a_vx*Pi*x/L)+v_y*sin(a_vy*Pi*y/L)+v_t*sin(a_vt*Pi*t/L))*cos(a_vy*Pi*y/L)+(u_0+u_x*sin(a_ux*Pi*x/L)+u_y*cos(a_uy*Pi*y/L)+u_t*cos(a_ut*Pi*t/L))*(v_x*sin(a_vx*Pi*x/L)*a_vx+a_uy*sin(a_uy*Pi*y/L)*u_y))*(rho_y*sin(a_rhoy*Pi*y/L)*a_rhoy*nu_sa_y*cos(a_nusay*Pi*y/L)+nu_sa_y*sin(a_nusay*Pi*y/L)*a_nusay*rho_t*sin(a_rhot*Pi*t/L)+nu_sa_y*sin(a_nusay*Pi*y/L)*a_nusay*rho_0+rho_y*sin(a_rhoy*Pi*y/L)*a_rhoy*nu_sa_x*cos(a_nusax*Pi*x/L)+rho_y*sin(a_rhoy*Pi*y/L)*a_rhoy*nu_sa_0+nu_sa_y*sin(a_nusay*Pi*y/L)*a_nusay*rho_y*cos(a_rhoy*Pi*y/L)+nu_sa_y*sin(a_nusay*Pi*y/L)*a_nusay*rho_x*sin(a_rhox*Pi*x/L)+rho_y*sin(a_rhoy*Pi*y/L)*a_rhoy*nu_sa_t*cos(a_nusat*Pi*t/L))/((nu_sa_t^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusat*Pi*t/L)^2-(-2*nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)-2*nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)-2*rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0-2*rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+c_v1*mu)*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*nu_sa_t*cos(a_nusat*Pi*t/L)+nu_sa_x^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusax*Pi*x/L)^2-(-2*nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)-2*rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0-2*rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+c_v1*mu)*nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y^2*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))^2*cos(a_nusay*Pi*y/L)^2-nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*(-2*rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0-2*rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+c_v1*mu)*cos(a_nusay*Pi*y/L)+rho_y^2*nu_sa_0^2*cos(a_rhoy*Pi*y/L)^2-nu_sa_0*rho_y*(-2*rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0+c_v1*mu)*cos(a_rhoy*Pi*y/L)+nu_sa_0^2*rho_t^2*sin(a_rhot*Pi*t/L)^2-nu_sa_0*rho_t*(-2*rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0-2*rho_0*nu_sa_0+c_v1*mu)*sin(a_rhot*Pi*t/L)+rho_x^2*nu_sa_0^2*sin(a_rhox*Pi*x/L)^2-rho_x*nu_sa_0*(-2*rho_0*nu_sa_0+c_v1*mu)*sin(a_rhox*Pi*x/L)+c_v1^2*mu^2-nu_sa_0*mu*c_v1*rho_0+nu_sa_0^2*rho_0^2)*L^2*(nu_sa_t*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusat*Pi*t/L)+nu_sa_x*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusax*Pi*x/L)+nu_sa_y*(rho_0+rho_x*sin(a_rhox*Pi*x/L)+rho_y*cos(a_rhoy*Pi*y/L)+rho_t*sin(a_rhot*Pi*t/L))*cos(a_nusay*Pi*y/L)+rho_0*nu_sa_0+rho_x*sin(a_rhox*Pi*x/L)*nu_sa_0+rho_y*cos(a_rhoy*Pi*y/L)*nu_sa_0+rho_t*sin(a_rhot*Pi*t/L)*nu_sa_0+c_v1*mu));


# Checking ------------------------------------------------------------------------------------
simplify(Q_3-Q3n);

#------------------------------------------------------------------------------------
